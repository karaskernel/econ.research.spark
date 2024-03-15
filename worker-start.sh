#!/bin/bash
#SBATCH --job-name spark_worker
#SBATCH --nodes 10
#SBATCH --tasks-per-node 1
#SBATCH --partition phi
#SBATCH --cpus-per-task 31
# The %j variable includes the job number.  Useful for multiple runs
#SBATCH --output simple_%j.txt        # Send the standard output to simple_<job ID>.txt
#SBATCH --error simple_%j.err         # Send the error output to simple_<job ID>.err
hostname
export SPARK_NO_DAEMONIZE=1
/scratch/jkarasev/spark-3.5.1-bin-hadoop3/sbin/start-worker.sh -c 64 -m 94G spark://login1.cluster:7077 -d /scratch/jkarasev/spark
