#!/bin/bash
#SBATCH --job-name spark_worker2
#SBATCH --nodes 20
#SBATCH --ntasks-per-node=1    # Number of tasks (workers) per node
#SBATCH --cpus-per-task=20      # Number of CPU cores per task (worker)
#SBATCH --mem=120G              # Memory per node for the additional workers
##SBATCH --time=00:45:00        # Maximum runtime

##SBATCH --tasks-per-node 1
##SBATCH --partition phi
##SBATCH --cpus-per-task 20
# The %j variable includes the job number.  Useful for multiple runs
##SBATCH --output simple_%j.txt        # Send the standard output to simple_<job ID>.txt
##SBATCH --error simple_%j.err         # Send the error output to simple_<job ID>.err
##srun {hostname;sleep 5; hostname}

srun bash /scratch/jkarasev/spark/worker-start-script.sh

#srun hostname; 
#srun export SPARK_NO_DAEMONIZE=1; 
#srun export SPARK_HOME="/scratch/jkarasev/spark-3.5.1-bin-hadoop3/"; 
#srun /scratch/jkarasev/spark-3.5.1-bin-hadoop3/sbin/start-worker.sh spark://compute037.cluster:7077 -d /scratch/jkarasev/spark

#srun hostname
#srun export SPARK_NO_DAEMONIZE=1
#srun /scratch/jkarasev/spark-3.5.1-bin-hadoop3/sbin/start-worker.sh -c 64 -m 94G spark://login1.cluster:7077 -d /scratch/jkarasev/spark
