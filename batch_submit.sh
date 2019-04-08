#!/bin/bash

for sess in `seq 1 1 2` ; do

    baseDir='/home/ea461/rds/rds-hpc-support/ea461/HPCSSUP-16575/slurm-matlab-calls/'${sess}

    echo 'working on:' "${sess}"
    
    mkdir ${baseDir}
	sbatch submit.slurm ${baseDir}

done