#!/bin/bash
host=$(hostname -f)
port=7077
export SPARK_HOME="/scratch/jkarasev/spark-3.5.1-bin-hadoop3/"
echo "Starting master as spark://$host:$port"
/scratch/jkarasev/spark-3.5.1-bin-hadoop3/sbin/start-master.sh --host $host -p $port