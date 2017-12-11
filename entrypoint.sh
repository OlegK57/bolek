#!/bin/bash

ls -la /var/secrets
echo "Prepare secret environments"
if [ -d "/var/secrets" ]; then
  for a in /var/secrets/*
  do 
    echo $a
    echo $(basename $a) "$(cat $a)"
    export $(basename $a)="$(cat $a)"
  done
fi

set

/bin/bash
