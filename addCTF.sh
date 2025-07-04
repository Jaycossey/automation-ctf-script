#! /bin/bash

help=''
target_pdf=''
verbose='false'

print_usage() {
  printf "Usage: ./addCTF -h"
}

while getopts 'ht:v' flag; do
  case "${flag}" in
    h) echo "Applies basic changes to the metadata of a PDF files Title, Creator and Producer tags.\nExample use: ./addCTF -f target.pdf -v\n-f | target_pdf\n-h | show this message\n-v | verbose output";;
    t) target_pdf="${OPTARG}" ;;
    v) verbose='true' ;;
    *) print_usage
       exit 1 ;;
  esac
done
#echo $target_pdf
exiftool $target_pdf -Title="https://github.com/Jaycossey" -Creator="S2F3YXNha2kgVnVsY2Fu" -Producer="ChecyrPbjGurbel!"

echo "File updated, check below is accurate:\n"
exiftool $target_pdf
