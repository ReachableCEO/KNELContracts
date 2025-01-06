#!/bin/bash

set -euo pipefail

source ./KNEL-Contract-Template-Variables.env

MUSTACHE_PATH="vendor/git.knownelement.com/ExternalVendorCode/mo/mo"

for input_file in $(ls -1 contract-inputs/*.md); 
do
    OUTPUT_FILE_NAME="$(echo $input_file | awk -F '/' '{print $2}')"
    bash $MUSTACHE_PATH $input_file  > src/$OUTPUT_FILE_NAME
done