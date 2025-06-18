#!/bin/bash

START_MILLI=1611360000000 #jan 23 2021 12:00 AM
END_MILLI=1627775999000 # july 31 2021 11:59 PM
OUTPUT_FILE="ratings.tsv"

# Create or clear the output file
> "$OUTPUT_FILE"

for i in $(seq -w 0 19); do
  INPUT_FILE="ratings-000${i}.zip"
  echo "Processing $INPUT_FILE..."

  if [ "$i" == "00" ]; then
    # Write header only once
    zcat "$INPUT_FILE" | head -n 1 > "$OUTPUT_FILE"
  fi

  # Filter rows and append to output (skip header)
  zcat "$INPUT_FILE" | tail -n +2 | awk -F '\t' -v min="$START_MILLI" -v max="$END_MILLI" \
    '{if ($3 >= min && $3 <= max) print $0;}' >> "$OUTPUT_FILE"
done