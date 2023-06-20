#!/bin/bash

# get file count
cnt=$(ls ./minimized-corpus | wc -l)
echo $cnt files

# iterate over files
#for filename in ./aflplusplus/* ; do
for filename in ./fuzz_llex/* ; do
    echo "Processing $filename"


    # run lua script and capture exit code
    ./lua "$filename"

done