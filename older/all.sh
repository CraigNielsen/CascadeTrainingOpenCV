#!/bin/bash

#this performs all training automatically

./clean.sh
echo Done Cleaning
./1name_negatives.sh
echo named Negatives
./2name_positives.sh
echo named postives
python 3edit_positives.py "positives.txt" 30 30 true > tempr_.txt
echo edited postives
read a b <<<`cat tempr_.txt`
rm tempr_.txt

./after_setup.sh $a
echo done setup
./train.sh $a $b $1
echo done training

