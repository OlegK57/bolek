#!/bin/bash

echo "Prepare secret environments"
if [ -d "/var/secrets" ]; then
  for a in /var/secrets/*
  do 
    echo $(basename $a)="$(cat $a)"
    export $(basename $a)="$(cat $a)"
  done
fi

set

/bin/bash
