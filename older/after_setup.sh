#!/bin/bash

#this scripts will begin training,
#setup vec files, and train 
#takes one argument (no. of positive files)

if [[ $# -lt 1 ]]; then
cat <<- EOF
	this scripts takes minimum 1 argument: 
	(the number of positive images)
	and optional (view images : "true" ? )
	EOF
	exit 0
fi

opencv_createsamples -info positives.info -num "$1" -w 30 -h 30 -vec vector_positives.vec
if [[ $2 ]]; then
opencv_createsamples -vec vector_positives.vec -w 30 -h 30
fi

mkdir data

