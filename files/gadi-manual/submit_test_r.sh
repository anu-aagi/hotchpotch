#!/bin/bash
#PBS -P <project>
#PBS -q normal
#PBS -l walltime=00:05:00
#PBS -l ncpus=1
#PBS -l mem=4GB
#PBS -l jobfs=1GB
#PBS -l storage=scratch/<project>
#PBS -l wd
#PBS -N test_r_job
#PBS -o test_r_job.out
#PBS -e test_r_job.err

# Load R - run `module avail R` first to confirm the current version
module load R/4.4.1

Rscript test_r.R
