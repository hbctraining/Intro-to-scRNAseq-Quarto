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

# Web summary
curl -L "https://www.dropbox.com/scl/fi/skjyyvs9078pbef7s4qvb/ctrl_web_summary.html?rlkey=335gw4qmy29uny5813wg0zakr&dl=1" -o "data/ctrl_web_summary.html"
curl -L "https://www.dropbox.com/scl/fi/r6n83y57cd7vhc130zm1g/stim_web_summary.html?rlkey=50ur193yfsy5ex9urkmr87h3c&dl=1" -o "data/stim_web_summary.html"

# Metrics summary
curl -L "https://www.dropbox.com/scl/fi/qnz44ng51ojmhu44acc8g/ctrl_metrics_summary.csv?rlkey=8zx5g1mtn6mrlwpv0syoz3bv4&st=9d0okyhf&dl=1" -o data/ctrl_metrics_summary.csv
curl -L "https://www.dropbox.com/scl/fi/gaa4sabcbhwqpuogfh0us/stim_metrics_summary.csv?rlkey=h2uokc9r2edeinxtzgrpw3ds4&dl=1" -o data/stim_metrics_summary.csv
