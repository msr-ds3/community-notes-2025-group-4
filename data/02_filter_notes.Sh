#!/bin/bash

START_MILLI=1611360000000
END_MILLI=1627732799000
OUTPUT_FILE="notes.tsv"
INPUT_FILE="notes-00000.zip"

# Copy header
zcat "$INPUT_FILE" | head -n 1 > "$OUTPUT_FILE"

# Filter by createdAtMillis (column 3)
zcat "$INPUT_FILE" | tail -n +2 | awk -F '\t' -v min="$START_MILLI" -v max="$END_MILLI" '{if ($3 >= min && $3 <= max) print $0;}' >> "$OUTPUT_FILE"
