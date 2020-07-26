#!/usr/bin/env bash
###
### usage: bash run_intron.sh N
### N: number of runs
###
cp intron_orig.py intron.py

i=0
while [ $i -lt $1 ]
do
  ## Give itself as input, append result to itself
  python intron.py < intron.py >> intron.py
  
  ## Only keep the last line 
  echo "$(tail -n 1 intron.py)" > intron.py
  i=$[$i+1]
done
