#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
// for benchmarking
#include <time.h>
#include <unistd.h>

// Implement this function in x86_asm.S and mips_asm.S
extern void mat_mul_asm(uint size, uint* a, uint* b , uint* c);

// converts timespec into ns	
static double nanosec(struct timespec start, struct timespec end) {
	return (end.tv_sec - start.tv_sec) * 1e9 + (end.tv_nsec - start.tv_nsec);
}


// This is the C equivalent to the assembly implementation
void mat_mul_c(uint size, uint* a, uint* b , uint* c) {
	for(int i = 0; i < size; i++) {
		for(int j = 0; j < size; j++) {
			for(int k = 0; k < size; k++) {
				c[size*i + j] += a[size*i + k] * b[size*k + j];
			}
		}
	}
}

int main(int argc, char **argv) {
	// Initialisation
	uint size = 10;
	uint* a = malloc(size*size * sizeof(uint));
	uint* b = malloc(size*size * sizeof(uint));
	uint* c = malloc(size*size * sizeof(uint));
	for(int i = 0; i < size; i++) {
		for(int j = 0; j < size; j++) {
				a[size*i + j] = i+1;
				b[size*i + j] = j+1;
				c[size*i + j] = 0;
		}
	}


	FILE *file = fopen("benchmark.csv", "w");
	
	fprintf(file, "run,total_ns,average_ns\n");

	//run 1000 times to warm up caches
	for (int i = 0; i < 1000; i++) {
		// choose between testing c or assembly
		mat_mul_c(size, a, b, c);
		//mat_mul_asm(size, a, b, c);
	}

	// later test what number works best here - tradeoffs?
	int it = 10000; // amount of times we do mat_mul_asm

	// run is amount of times we do the test
	for (int run = 0; run < 10; run++) {

		struct timespec start, end;
		
		clock_gettime(CLOCK_MONOTONIC_RAW, &start);

		for (int i = 0; i < it; i++) {
			// choose between asm and c
			mat_mul_c(size, a, b, c);
			//mat_mul_asm(size, a, b, c);
		}

		clock_gettime(CLOCK_MONOTONIC_RAW, &end);

		double total = nanosec(start, end);
		double average = total / it;

		printf("Run %d: %.2f ns per call\n", (run + 1), average);

		fprintf(file, "%d,%.0f,%.2f\n", (run + 1), total, average);
		
		sleep(1);
	}

	// force compiler to run calculation
	printf("Force update %u\n", c[0]);

	fclose(file);

	/*
	// Multiplication
	mat_mul_c(size, a, b, c);
	//mat_mul_asm(size, a, b, c); // Call this when the function is implemented
	
	// Print result
	for (uint i = 0; i < size; i++) {
		for (uint j = 0; j < size; j++) {
			printf("%d ", c[size*i + j]); 
		}
		printf("\n");
	} 
	*/

	// why are we not returning memory used by malloc?
	free(a);
	free(b);
	free(c);

	return 0;
}


