#!/bin/bash

cmd="python openbazaard.py start -a 0.0.0.0"

if [[ -n $USERNAME || -n $PASSWORD ]]; then 
    sed -i "s|#USERNAME = username|USERNAME = $USERNAME|g" ob.cfg;
    sed -i "s|#PASSWORD = password|PASSWORD = $PASSWORD|g" ob.cfg;
else
    echo "You need to set the USERNAME and PASSWORD ENV variable";
    exit;
fi

$cmd
