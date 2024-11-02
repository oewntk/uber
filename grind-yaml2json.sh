#!/bin/bash

#
# Copyright (c) 2021-2024. Bernard Bou.
#

IN="$1"
if [ -z "$1" ]; then
	IN=yaml
fi
echo "YAML:  ${IN}" 1>&2;

IN2="$2"
if [ -z "$2" ]; then
	IN2=yaml2
fi
echo "YAML2: ${IN2}" 1>&2;

OUTFILE="$3"
if [ -z "$3" ]; then
	OUTFILE=json/oewn.json
fi
mkdir -p $(dirname "${OUTDIR}")
echo "OUT:   ${OUTFILE}" 1>&2;

opts="-pretty"

jar=yaml2json-2.2.2-uber.jar
java -ea -jar "${jar}" ${opts} "${IN}" "${IN2}" "${OUTFILE}"

