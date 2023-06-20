#!/bin/bash

# get file count
#cnt=$(ls ./grammar-mutator | wc -l)
#cnt=$(ls ./fuzz_llex | wc -l)
cnt=$(ls ./fuzz_lparse | wc -l)
echo $cnt files

# iterate over files
#for filename in ./aflplusplus/* ; do
for filename in ./fuzz_lparse/* ; do
    echo "Processing $filename"


    # run lua script and capture exit code
    ./lua "$filename"

done