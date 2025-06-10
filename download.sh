#!/bin/bash

# Set the URL and destination file name
URL="https://www.dropbox.com/s/vop78wq76h02a2f/single_cell_rnaseq.zip?dl=1"
ZIPFILE="single_cell_rnaseq.zip"

# Download the file
curl -L "$URL" -o "$ZIPFILE"

# Unzip the file
unzip "$ZIPFILE"

# Move data folder
mv single_cell_rnaseq/data . 

# Remove the zip file after extraction
rm "$ZIPFILE"
rm -rf __MACOSX
rm -rf single_cell_rnaseq
