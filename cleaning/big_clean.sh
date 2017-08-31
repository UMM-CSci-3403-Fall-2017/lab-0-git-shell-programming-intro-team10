#!/bin/bash

tar=$1
dir=$2

mainDir=$(pwd)

tar -xzf $tar -C $dir

cd $dir/*

for i in $(pwd)/*; do	
	 grep -l "DELETE ME!" $i | xargs rm -f
done

tar -zcf  cleaned_$tar *

cd mainDir
