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
files = {
    "x86": "benchmark_x86.csv",
    "mips": "benchmark_mips.csv",
    "C -O0": "benchmark_c_O0.csv",
    "C -O1": "benchmark_c_O1.csv",
    "C -O2": "benchmark_c_O2.csv",
    "C -O3": "benchmark_c_O3.csv",
    "C -Os": "benchmark_c_Os.csv",
    "C -Ofast": "benchmark_c_Ofast.csv",
    "C -O0 force": "benchmark_c_O0_force.csv",
    "C -O1 force": "benchmark_c_O1_force.csv",
    "C -O2 force": "benchmark_c_O2_force.csv",
    "C -O3 force": "benchmark_c_O3_force.csv",
    "C -Os force": "benchmark_c_Os_force.csv",
    "C -Ofast force": "benchmark_c_Ofast_force.csv",
}

means = {}

for name, filename in files.items():

    runs = []
    times = []

    with open(filename, newline="") as file:
        reader = csv.DictReader(file)

        for row in reader:
            runs.append(int(row["run"]))
            times.append(float(row["average_ns"]))


    mean_time = sum(times) / len(times)
    means[name] = mean_time

    print(f"{name}")
    print(f"Mean: {mean_time:.2f} ns")
    print(f"Min {min(times):.2f} ns")
    print(f"Max {max(times):.2f} ns")

    plt.figure()

    plt.plot(runs, times, marker="o", label="Measured time")
    plt.axhline(mean_time, linestyle="--", label=f"mean: {mean_time:.2f} ns")

    plt.xlabel("Run")
    plt.ylabel("average time per mm (in ns)")
    plt.title(name)

    plt.xticks(runs)
    plt.legend()
    plt.grid(True)

    plt.tight_layout()

    output_name = name + ".png"

    plt.savefig(output_name)
    plt.close()