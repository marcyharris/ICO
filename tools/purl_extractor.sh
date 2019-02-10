#!/bin/bash

## This script greps a file for the PURLS and outputs
## them to a new file

files=''
programname=$0

print_usage() {
  echo "usage: $programname [-f infile]"
  echo "  -f infile   specify input file infile"
}

while getopts 'f:o:' flag; do
  case "${flag}" in
    f) infiles="${OPTARG}" ; result=$(grep 'owl:Class rdf:about' ${infiles} | cut -d '"' -f2) ;;
    *) print_usage
       exit 1 ;;
  esac
done
