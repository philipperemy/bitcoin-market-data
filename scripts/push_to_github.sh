#!/bin/bash
compressed_dir="bitcoin_market_data"

for f in ${compressed_dir}/*; do
  echo $f
  git add $f
  git commit -m "$f"
  git push origin master 
done
