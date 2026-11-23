#!/bin/sh

inputfile=$(realpath $2)
outputfile=$(realpath $1)

if [ ! -f "${inputfile}" ]; then
	printf "Input file '%s' does not exist, exiting...\n" "${inputfile}"
	exit 1
fi

if [ "${inputfile}" = "${outputfile}" ]; then
	printf "Output file '%s' should not be the same as input file '%s'. You can delete it manually afterwards.\n" "${outputfile}" "${inputfile}"
	printf 'Exiting...\n'
		exit 1
fi

gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook -dNOPAUSE -dQUIET -dBATCH -sOutputFile="${outputfile}" "${inputfile}"

