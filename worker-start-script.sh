#!/bin/bash
hostname
export SPARK_NO_DAEMONIZE=1
export SPARK_HOME="/scratch/jkarasev/spark-3.5.1-bin-hadoop3/"
bash /scratch/jkarasev/spark-3.5.1-bin-hadoop3/sbin/start-worker.sh spark://login1.cluster:7077 -d /scratch/jkarasev/spark