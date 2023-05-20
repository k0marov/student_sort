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

echo "$filename" 
echo "$places" 
echo "$output" 
