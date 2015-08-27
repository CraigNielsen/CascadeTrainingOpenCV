#!/bin/bash
#This will perform all 3 steps required for setup

./1name_negatives.sh
./2name_positives.sh
python 3edit_positives.py "positives.txt" 30 30 true


