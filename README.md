
## MIPS/x86 cross-compilers and emulators 

To compile and execute MIPS64 programs (and x86 programs on ARM Macs), a cross-compiler and emulator are required. You can either choose to install them on your system, or use the docker container provided for the assignment (see **Host setup** and **Docker setup** sections for details).

Once your environment is setup, a Makefile is provided to compile and run the program. The following commands can be called either from the host or the docker container: 

## how to run the implementations
- `make` compiles the program using `gcc` by default
- `make mips64` compiles the program using mips64 cross compiler (`mips64-linux-gnuabi64-gcc` by default)
- `make x86` compiles the program using x86 cross compiler (`x86_64-linux-gnu-gcc` by default)
- `make run` run the program on the host
- `make run_mips64` run the program using the mips64 emulator 
- `make run_x86` run the program using the x86 emulator 


## how to run benchmark

1. # running implementations
   - to choose wich implementation to test go to main.c file and comment in the either:
      - //mat_mul_c(size, a, b, c);
      - //mat_mul_asm(size, a, b, c);

2. # to get the graphs
   - This program may not work inside the docker struction
   - Requires matplotlib to work
   - From src: python3 benchmark.py

### Host setup
On Ubuntu or WSL2 you can install the dependencies specified on the Dockerfile. On other distributions or Mac systems, you are advised to use the docker container, especially the ARM Macs. You can also search for resources online, but they may be difficult to get through.    

### Docker setup
Requirements: [Docker](https://docs.docker.com/get-docker/)

The Dockerfile is based on Ubuntu 24.04. Running the container gives an environment with both mips64 and x86 cross-compiler and the emulator installed. The environment is available through the command `make docker`. You can compile and run the code as intended when inside the docker environment (using the Makefile). All changes in the src folder on the host are registered in the docker environment. You can use your IDE to edit the code then compile and run it inside the docker environment.


