#!/bin/bash -e

if [ -z "$1" ]; then
  echo "usage: $0 <input-file>"
  exit 1
fi

input_file="$1"
echo "processing $input_file..."

output_file="clean/$input_file"
dst_dir=$(dirname "$output_file")
mkdir -p "$dst_dir"

sox "$input_file" "$output_file" noisered noise.prof 0.21
mid3cp "$input_file" "$output_file"
