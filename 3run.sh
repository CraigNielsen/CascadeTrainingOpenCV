#!/bin/bash

opencv_traincascade -data data -vec positives.vec -bg negatives.txt -numStages 20 -minHitRate 0.999 -maxFalseAlarmRate 0.5 -numPos "$1" -numNeg "$2" -w 20 -h 20 -mode ALL -precalcValBufSize 1024 -precalcIdxBufSize 1024  
