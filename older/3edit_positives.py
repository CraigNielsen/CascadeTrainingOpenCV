#!/usr/bin/python

import sys
import os
#this is setup to input strait into the all script
#change the linecount and linsneg output for info on number of photos

def helpMe():
	print "HELP FILE: \n"
	print "This function creates the file required for positive images, \n \
	in the training of a cascade classifier."
	print "Takes 3 args: \n 1:filename,\n 2:number of rows in image,\n 3:number of cols in image \n"
	print "optional argument to cleanup. No dest.txt , only edits source text file"


try:
	filename=sys.argv[1]
	numrows=sys.argv[2]
	numcols=sys.argv[3]
except Exception:
	helpMe()
	sys.exit()

prefix=""
suffix=" 1 0 0 " + numrows + " " + numcols

linecount=0
linesinNeg=0
with open("negatives.txt") as ng:
	for line in ng:
		linesinNeg+=1

with open(filename,"r") as src:
	with open("./positives_temp.txt","w") as dst:
		for line in src:
			if len(line)<3:
				continue
			dst.write("%s%s%s\n" % (prefix,line.rstrip('\n'),suffix))
			linecount+=1

linecount -= 10
print str(linecount) +"\n"
print str(linesinNeg)
try:
	if str(sys.argv[4]) :
		os.remove(filename)
		os.rename("positives_temp.txt",filename[:-3] + "info")
except Exception:
	print "no cleanup"
