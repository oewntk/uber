#!/bin/bash

#
# Copyright (c) 2024. Bernard Bou.
#

IN="$1"
if [ -z "$1" ]; then
	IN=wndb
fi
echo "XML:  ${IN}" 1>&2;

IN2="$2"
if [ -z "$2" ]; then
	IN2=wndb2
fi
echo "XML2: ${IN2}" 1>&2;

OUTDIR="$3"
if [ -z "$3" ]; then
	OUTDIR=wndb_out
fi
mkdir -p "${OUTDIR}"
echo "DIR:   "${OUTDIR}"" 1>&2;

jar=wndb2wndb-2.2.0-uber.jar
java -ea -jar "${jar}" "${IN}" "${IN2}" "${OUTDIR}"
