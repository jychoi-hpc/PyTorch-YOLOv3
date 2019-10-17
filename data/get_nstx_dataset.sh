#!/bin/bash

if hash aria2c 2>/dev/null; then
    WGET='aria2c -x 8 -s 8'
else
    WGET='wget -c'
fi

$WGET https://www.dropbox.com/s/snkp5u65kmh957c/nstx.tar.gz?dl=0
tar xzf nstx.tgz
cd nstx
python gen_nstx_dataset.py
