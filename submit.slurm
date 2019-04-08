#!/bin/bash
#! This line is a comment
#! Make sure you only have comments and #SBATCH directives between here and the end of the #SBATCH directives, or things will break
#! Name of the job:
#SBATCH -J matlab-example
#SBATCH -A SUPPORT-CPU
#! Output filename:
###SBATCH --output=matlab_example.out 
#! Errors filename:
#SBATCH --error=matlab_example.err 

#! Number of nodes to be allocated for the job (for single core jobs always leave this at 1)
#SBATCH --nodes=1 
#! Number of tasks. By default SLURM assumes 1 task per node and 1 CPU per task. (for single core jobs always leave this at 1)
#SBATCH --ntasks=1
#! How many many cores will be allocated per task? (for single core jobs always leave this at 1)
#SBATCH --cpus-per-task=1 
#! Estimated runtime: hh:mm:ss (job is force-stopped after if exceeded)
#SBATCH --time=00:05:00
#! Estimated maximum memory needed (job is force-stopped if exceeded)
##SBATCH --mem=5990mb

#! This is the partition name.
#SBATCH -p skylake

#! mail alert at start, end and abortion of execution
#! emails will default to going to your email address
#! you can specify a different email address manually if needed.
##SBATCH --mail-type=ALL

#! Don't put any #SBATCH directives below this line

#! Modify the environment seen by the application. For this example we need the default modules.
. /etc/profile.d/modules.sh                # This line enables the module command
module purge                               # Removes all modules still loaded
module load rhel7/default-peta4            # REQUIRED - loads the basic environment
module load use.own                        # This line loads the own module list
module load matlab

echo 'command line argument:' "${1}"
matlab -nodisplay -r "example('${1}'); quit"
