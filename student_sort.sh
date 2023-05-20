#!/bin/bash 

while getopts ":f:o:t:" ARG; do 
  case "$ARG" in 
    t) places="$OPTARG" ;; 
    f) filename="$OPTARG" ;; 
    o) output="$OPTARG" ;; 
    :) echo "Argument missing!" ;; 
    \?) echo "Unknown argument!" ;; 
  esac 
done 

if [[ ! -f $output ]] 
then
	touch $output 
fi 


sort -k2nr -k3nr -k4 -k1 $filename | head -n"$places" > "$output" 

echo "$filename" 
echo "$places" 
echo "$output" 



