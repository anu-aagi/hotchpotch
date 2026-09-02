#!/bin/bash
#PBS -P vk72
#PBS -q normal
#PBS -l walltime=00:05:00
#PBS -l ncpus=1
#PBS -l mem=4GB
#PBS -l jobfs=1GB
#PBS -l storage=scratch/vk72
#PBS -l wd
#PBS -N test_py_job
#PBS -o test_py_job.out
#PBS -e test_py_job.err

# Load Python run `module avail python3` first to confirm the current version
module load python3/3.11.7

# If using a virtual environment, activate it here instead of/after the module load, e.g.:
# source /g/data/<project>/<username>/venvs/myenv/bin/activate

python3 test_python.py
