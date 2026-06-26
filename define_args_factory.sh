#!/bin/bash

# Copyright (c) 2021-2026. Bernard Bou.

IN=out
IN_SER=ser/oewn.ser
IN_YAML=yaml
IN_YAML2=yaml2
IN_YAMLPLUS=yamlplus
IN_JSON=json
IN_JSON_FILE=oewn-model.json
IN_WNDB=wndb

declare -A BY_KEY_FACTORY
export BY_KEY_FACTORY=(
#          FLAGS        FROM      INPUT
#___________________________ ____________________________________________
[SER]="                -if ser   ${IN}/${IN_SER}                        "
[YAM]="                -if yaml  ${IN}/${IN_YAML}                       "
[JSN_O]="  -is o       -if json  ${IN}/${IN_JSON}                       "
[JSN_O1]=" -is o -i1   -if json  ${IN}/${IN_JSON}1                      "
[JSN_DA]=" -is d -ij a -if json  ${IN}/${IN_JSON}_data                  "
[JSN_DJ]=" -is d -ij j -if json  ${IN}/${IN_JSON}_data_je               "
[JSN_DV]=" -is d -ij v -if json  ${IN}/${IN_JSON}_data_vw               "
[JSN_D1]=" -is d -i1   -if json  ${IN}/${IN_JSON}_data1                 "
[JSN_M]="  -is m       -if json  ${IN}/${IN_JSON}_model/${IN_JSON_FILE} "
[WNB]="                -if wndb  ${IN}/${IN_WNDB}                       "
[WNB_C]="              -if wndb  ${IN}/${IN_WNDB}_compat                "

[YAM_PLUS]=" -p        -if yaml  ${IN_YAMLPLUS} -i2 ${IN_YAML2}         "
[PLUSYAM]="            -if yaml  ${IN}-plus/${IN_YAML}                  "
)
export KEYS_FACTORY="${!BY_KEY_FACTORY[@]}"
export KEYS_FACTORY="SER YAM JSN_O JSN_O1 JSN_DA JSN_DJ JSN_DV JSN_D1 JSN_M WNB WNB_C YAM_PLUS PLUSYAM"
