#!/bin/bash
#SBATCH -A TRN001
#SBATCH -J srun_xiqiu
#SBATCH -o %x-%j.out
#SBATCH -t 08:00
#SBATCH -p batch
#SBATCH -N 1

# number of OpenMP threads
export OMP_NUM_THREADS=2

# jsrun command to modify 
srun -N 1 -n 7 -c 1 ./hello_mpi_omp | sort
