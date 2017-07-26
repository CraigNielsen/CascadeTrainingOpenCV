#!/bin/bash

./1name_negatives.sh
./2name_positives.sh
perl createtrainsamples.pl positives.txt negatives.txt samples 1100 "opencv_createsamples  -bgcolor 0 -bgthresh 0 -maxxangle 0.001 -maxyangle 0.001 maxzangle 0.001 -maxidev 0.1 -w 20 -h 20"
python mergevec.py -v samples -o positives.vec
#rm positives.txt
#rm negatives.txt
