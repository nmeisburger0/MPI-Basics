#!/bin/bash

## The name of the job.
#SBATCH --job-name=MPI_Basics

## The number of compute nodes on NOTS
#SBATCH --nodes=4

## Tells the job scheduler to use nodes that are partially in use if they have
## the requested number of cores and RAM available.
#SBATCH -p scavenge

## The number of MPI processes to have on each compute node.
#SBATCH --ntasks-per-node=1

## The number of cores per MPI process.
#SBATCH --cpus-per-task=1

## The amount of RAM to allocate to each MPI process. Cannot exceed RAM in node.
#SBATCH --mem=1G

## The maximum amount of time to schedule the job for.
#SBATCH --time=00:01:00

## Email to send alerts to about job starting and completing.
#SBATCH --mail-user=netid@rice.edu

## Send alert when job starts and ends.
#SBATCH --mail-type=all

srun ./point
