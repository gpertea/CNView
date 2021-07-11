#!/usr/bin/env bash
USAGE="Usage: $0 bed_matrix.txt"
if [ $# -ne 1 ]; then
  echo $USAGE
  exit 1
fi
fmat="$1"
if [[ $fmat == "-h" ]]; then
  echo $USAGE
  exit 1
fi
if [[ ! -f $fmat ]]; then
  echo $USAGE
  echo "Error: file $fmat not found!"
  exit 1
fi
#skipping header line
(head -1 $fmat; tail -n +2 $fmat | sort -k1,1 -k2,2n) | bgzip > $fmat.srt.gz
tabix -s1 -b2 -e3 -S1 $fmat.srt.gz

echo "Tabix file and index created:"
ls $fmat.srt.gz*
