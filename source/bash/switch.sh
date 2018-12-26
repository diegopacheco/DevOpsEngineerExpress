#!/bin/bash

printf 'Whats best soccer team in brazil?'
read DISTR

case $DISTR in
     gremio)
          echo "I know it! You know a lot."
          ;;
     inter|internacional)
          echo "Hey you need to pick a better team. Keep Learning DevOps Engineering :-) "
          ;;
     *)
          echo "Hmm, ok. Looks like you will be a great engineer with no distractions"
          ;;
esac

