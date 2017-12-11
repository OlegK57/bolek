#!/bin/bash

echo "Prepare secret environments"
if [ -d "/var/secrets" ]; then
  for a in /var/secrets/*;do export $(basename $a)="$(cat $a)";done
fi
