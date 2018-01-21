#!/bin/bash
compressed_dir="bitcoin_market_data"
output_dir="bitcoin_market_data_csv"

rm -rf ${output_dir}
mkdir ${output_dir}

for f in ${compressed_dir}/*; do
  echo $f
  cat $f/* > ${output_dir}/$(basename $f).csv.gz
done
gunzip ${output_dir}/* --verbose
