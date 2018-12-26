#!/bin/bash

for i in {1..10}
do
  x=$(echo "5*$i" | bc)
  echo "5x$i=$x"
done

