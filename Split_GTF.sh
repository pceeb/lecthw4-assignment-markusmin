#!/bin/bash
# This script splits the file hg19 into three separate files, corresponding to each chromosome
# It requires no arguments.

for i in chr2 chr21 chr3
do
mkdir ${i}_gtf
grep -P "${i}\t" $1 > ${i}.gtf
mv ${i}.gtf ./${i}_gtf
done
