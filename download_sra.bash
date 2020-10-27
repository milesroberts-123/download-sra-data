#!/bin/bash

echo "USAGE: ./download_rename_sra.bash -s <LIST OF SRA NUMBERS, ONE PER LINE>"
#Input gff file and fasta file names and desired promoter length
#Parse input arguments
while getopts s: option; do
		case "${option}" in
			s) SRAS=${OPTARG};;
		esac
	done

#Download and rename SRA data
while read -u 3 -r SRA; do
	echo Downloading $SRA to current directory...
	#Download data
	fastq-dump --split-e $SRA
	#Rename data
done 3<$SRAS

