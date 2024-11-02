#!/bin/bash

#
# Copyright (c) 2021-2024. Bernard Bou.
#

IN="$1"
if [ -z "$1" ]; then
	IN=wndb31
fi
echo "WNDB:  ${IN}" 1>&2;

IN2="$2"
if [ -z "$2" ]; then
	IN2=wndb2
fi
echo "WNDB2: ${IN2}" 1>&2;

OUTDIR="$3"
if [ -z "$3" ]; then
	OUTDIR=sql31/data
fi
mkdir -p "${OUTDIR}"
echo "DIR:   ${OUTDIR}" 1>&2;

jar=wndb2sql-2.2.2-uber.jar
java -ea -jar "${jar}" "${IN}" "${IN2}" "${OUTDIR}"
