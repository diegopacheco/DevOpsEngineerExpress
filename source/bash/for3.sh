#!/bin/bash

for i in $(seq 0 9)
do
  x=$(echo "5*$i" | bc)
  echo "5x$i=$x"
done

