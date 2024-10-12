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

OUTFILE="$3"
if [ -z "$3" ]; then
	OUTFILE=json/wn31.json
fi
mkdir -p $(dirname "${OUTDIR}")
echo "OUT:   ${OUTFILE}" 1>&2;

opts="-pretty"

jar=wndb2json-2.1.3-uber.jar
java -ea -jar "${jar}" ${opts} "${IN}" "${IN2}" "${OUTFILE}"
