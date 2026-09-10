"""
This program may not work inside the docker struction
Requires matplotlib to work

To run: python3 benchmark.py
Make sure its in src
"""

import csv
import matplotlib

matplotlib.use("Agg")
# simple bug fix for my enviroment
import matplotlib.pyplot as plt

# change benchmark to the specific benchmark on next version
filename = "benchmark.csv"

runs = []
times = []

with open(filename, newline="") as file:
    reader = csv.DictReader(file)

    for row in reader:
        runs.append(int(row["run"]))
        times.append(float(row["average_ns"]))


mean_time = sum(times) / len(times)

print(f"Mean: {mean_time:.2f} ns")
print(f"Min {min(times):.2f} ns")
print(f"Max {max(times):.2f} ns")

plt.plot(runs, times, marker="o", label="Measured time")
plt.axhline(mean_time, linestyle="--", label=f"mean: {mean_time:.2f} ns")

plt.xlabel("Run")
plt.ylabel("average time per mm (in ns)")
# Currently this version is made only for x86, when testing mips 
# probably edit so the files dont confuse
plt.title("assembly benchmark")

plt.xticks(runs)
plt.legend()
plt.grid(True)

plt.tight_layout()

plt.savefig("benchmark_x86.png")