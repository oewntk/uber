#!/bin/bash

# Copyright (c) 2021-2026. Bernard Bou.

IN=out
IN_PLUS=out-plus

IN_SER=ser
IN_YAML=yaml
IN_YAML2=yaml2
IN_YAMLPLUS=yamlplus
IN_JSON=json
IN_WNDB=wndb

IN_JSON_FILE=oewn-model.json
IN_SER_FILE=oewn.ser

OUT=out_nids
OUT_PLUS=out_plus_nids

declare -A BY_KEY_NIDS
export BY_KEY_NIDS=(
#          FLAGS        FROM      INPUT
#___________________________ _____________________________________________________________________
[SER]="                -if ser   ${IN}/${IN_SER}/${IN_SER_FILE}         ${OUT}/${IN_SER}          "
[YAM]="                -if yaml  ${IN}/${IN_YAML}                       ${OUT}/${IN_YAML}         "
[JSN_O]="  -is o       -if json  ${IN}/${IN_JSON}                       ${OUT}/${IN_JSON}         "
[JSN_O1]=" -is o -i1   -if json  ${IN}/${IN_JSON}1                      ${OUT}/${IN_JSON}1        "
[JSN_DA]=" -is d -ij a -if json  ${IN}/${IN_JSON}_data                  ${OUT}/${IN_JSON}_data    "
[JSN_DJ]=" -is d -ij j -if json  ${IN}/${IN_JSON}_data_je               ${OUT}/${IN_JSON}_data_je "
[JSN_DV]=" -is d -ij v -if json  ${IN}/${IN_JSON}_data_vw               ${OUT}/${IN_JSON}_data_vw "
[JSN_D1]=" -is d -i1   -if json  ${IN}/${IN_JSON}_data1                 ${OUT}/${IN_JSON}_data1   "
[JSN_M]="  -is m       -if json  ${IN}/${IN_JSON}_model/${IN_JSON_FILE} ${OUT}/${IN_JSON}_model   "
[WNB]="                -if wndb  ${IN}/${IN_WNDB}                       ${OUT}/${IN_WNDB}         "
[WNB_C]="              -if wndb  ${IN}/${IN_WNDB}_compat                ${OUT}/${IN_WNDB}_c       "

[YAM_PLUS]=" -p        -if yaml  ${IN_YAMLPLUS} -i2 ${IN_YAML2}         ${OUT}/${IN_YAMLPLUS}     "
[PLUSYAM]="            -if yaml  ${IN_PLUS}/${IN_YAML}                  ${OUT_PLUS}/${IN_YAML}    "
)
export KEYS_NIDS="${!BY_KEY_NIDS[@]}"
export KEYS_NIDS="SER YAM JSN_O JSN_O1 JSN_DA JSN_DJ JSN_DV JSN_D1 JSN_M WNB WNB_C YAM_PLUS PLUSYAM"
