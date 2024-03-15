#!/bin/bash
echo "here are your cores john: " $(nproc)
time /scratch/jkarasev/pigz/pigz -dr /scratch/jkarasev/openalex-snapshot-v2/

