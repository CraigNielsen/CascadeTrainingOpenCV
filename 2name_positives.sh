#!/bin/bash
#creates the positive images list for classification vector

find /home/craig/Pictures/training_images/pos | grep ".ppm" > positives.txt

