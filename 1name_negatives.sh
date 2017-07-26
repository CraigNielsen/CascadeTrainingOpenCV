#!/bin/bash
#creates images list files
find /home/craig/Pictures/training_images/neg | grep ".png" > negatives.txt
find /home/craig/Pictures/training_images/pos | grep ".ppm" > positives.txt


