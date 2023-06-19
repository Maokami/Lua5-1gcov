#!/bin/bash

# get file count
cnt=$(ls ./minimized-corpus | wc -l)
echo $cnt files

# iterate over files
for filename in ./aflplusplus/* ; do
    echo "Processing $filename"

    # add the debug function override at the beginning of the file
    sed -i '1s;^;debug = function() end\n;' "$filename"

    # run lua script and capture exit code
    ./lua "$filename"

done