#!/bin/bash

MUSTACHE_PATH="../vendor/"

for input_file in $(ls -1 contract-inputs/*.md); 
do
    OUTPUT_FILE_NAME="$(echo $input_file | awk -F '/' '{print $2}')"
    $MUSTACHE_PATH $input_file  > $OUTPUT_FILE_NAME
done