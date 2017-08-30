#!/bin/bash

num=$1
dir=$2

tar -xzf ./NthPrime.tgz -C $dir
cd $dir
cd ./NthPrime

gcc *.c -o NthPrime

./NthPrime  $1 
