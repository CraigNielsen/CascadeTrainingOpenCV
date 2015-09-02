#!/bin/bash

./1name_negatives.sh
./2name_positives.sh
perl createtrainsamples.pl positives.txt negatives.txt samples 700 "opencv_createsamples  -bgcolor 0 -bgthresh 0 -maxxangle 0.01 -maxyangle 0.01 maxzangle 0.01 -maxidev 0.2 -w 20 -h 20"
python mergevec.py -v samples -o positives.vec
#rm positives.txt
#rm negatives.txt
