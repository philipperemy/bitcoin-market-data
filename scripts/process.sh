#!/bin/bash
bitcoin_data_dir="download"
compressed_dir="bitcoin_market_data"

rm -rf ${compressed_dir}
mkdir ${compressed_dir}

for f in ${bitcoin_data_dir}/*; do
  s=$f
  dirname=$(basename $s .csv.gz)
  echo "Dir -> ${dirname}"
  mkdir ${compressed_dir}/${dirname}
  split -b 95m $f ${compressed_dir}/${dirname}/$(basename $s) -d --verbose
done
