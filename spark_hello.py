#!/usr/bin/env python

import sys
import time
from pyspark.sql import SQLContext
from pyspark import SparkContext
from pyspark.sql.types import StringType
from pyspark.sql import SparkSession
import socket

spark = SparkSession.builder.appName("AndreyHere").getOrCreate()
spark.conf.set('spark.sql.caseSensitive', True)
sc = spark.sparkContext
sc.setLogLevel("INFO")  # change this to WARN for less verbosity
print('======== START ========')
start = time.time()
print("Hello from ", sc.master)
print("======== ELAPSED TIME: ", time.time() - start)
rdd_data = [{'id': 2079105963, 'year': 1993, 'type': 'article', 'isCS': False},
            {'id': 2079105964, 'year': 1993, 'type': 'article', 'isCS': True},
            {'id': 2079105965, 'year': 1994, 'type': 'article', 'isCS': True},
            {'id': 2079105966, 'year': 1994, 'type': 'article', 'isCS': False},
            {'id': 2079105967, 'year': 1995, 'type': 'article', 'isCS': True}]

# Create RDD from sample data
rdd = spark.sparkContext.parallelize(rdd_data)
print(rdd.take(1))
import pyspark
print(pyspark.__version__)
import sys
print(sys.version)

import pyspark
print(pyspark.__version__)
print(pyspark.__file__)