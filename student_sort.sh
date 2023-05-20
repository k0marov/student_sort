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

awk '{print $1 " " $2 " " $3 " " (($4=="N") ? "Z" : $4)}' $filename | 
	sort -k2nr -k3nr -k4 -k1 | 
awk '{print $1 " " $2 " " $3 " " (($4=="Z") ? "N" : $4)}' $filename | 
	head -n"$places" > "$output" 


