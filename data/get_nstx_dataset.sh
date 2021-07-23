#!/bin/bash

if hash aria2c 2>/dev/null; then
    WGET='aria2c -x 8 -s 8'
else
    WGET='wget -c'
fi

## Got an error with aria2
wget -O nstx.tar.gz https://www.dropbox.com/s/40gy7wj8stc35au/nstx.tar.gz
tar xzf nstx.tar.gz
cd nstx
python gen_nstx_dataset.py
