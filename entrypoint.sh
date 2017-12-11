#!/bin/bash

ls -la /run/secrets
echo "Prepare secret environments"
if [ -d "/run/secrets" ]; then
  for a in /run/secrets/*
  do 
    echo $a
    echo $(basename $a) "$(cat $a)"
    export $(basename $a)="$(cat $a)"
  done
fi

set

/bin/bash
