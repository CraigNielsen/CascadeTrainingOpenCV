#!/bin/bash
#this script will run the training
ftype=LBP

if [ "$#" -ne 3 ];then
	echo "takes three arguments
	\nnumber positive images
	\nnumber negative images
	\nnumber of stages"
	exit 0
else
	echo training with $ftype .. 
fi
opencv_traincascade -data data -vec vector_positives.vec -bg negatives.txt -numPos "$1" -numNeg "$2" -numStages "$3" -w 30 -h 30 -precalcValBufSize 1024 -minHitrate 0.999 -featureType $ftype 
