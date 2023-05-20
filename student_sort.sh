#!/bin/bash 

while getopts ":f:o:t:" ARG; do 
  case "$ARG" in 
    t) places="$OPTARG" ;; 
    f) filename="$OPTARG" ;; 
    o) output="$OPTARG" ;; 
  esac 
done 

awk '{printf "%s %s %s %s\n", $1, $2, $3, (($4=="N") ? "Z" : $4)}' $filename | 
	sort -k2nr -k3nr -k4 -k1 | 
	head -n"$places" | 
	awk '{print $1}' > "$output" 


