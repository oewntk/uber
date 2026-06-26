#!/bin/bash

# Copyright (c) 2021-2026. Bernard Bou.

IN_YAML=yamlplus
IN_YAML2=yaml2
OUT=out-plus

OUT_INFO=oewn.info
OUT_SER=ser/oewn.ser
OUT_SER2=ser/oewn.ser.info
OUT_YAML=yaml
OUT_WNDB=wndb
OUT_JSON=json
OUT_JSON_FILE=oewn-model.json
OUT_SQL=sql

declare -A BY_KEY_PLUS
export BY_KEY_PLUS=(
#                   FLAGS           FROM     TO        INPUT      INPUT2           OUTPUT                                    OUTPUT2
#________________________________________________________________________________________________________________________________________________________________________
[YAM_PLUS_SER]="    -p              -if yaml -of ser   ${IN_YAML} -i2 ${IN_YAML2}  ${OUT}/${OUT_SER}                         -oi ${OUT}/${OUT_SER2}                     "
[YAM_PLUS_YAM]="    -p -om          -if yaml -of yaml  ${IN_YAML} -i2 ${IN_YAML2}  ${OUT}/${OUT_YAML}                        -oi ${OUT}/${OUT_YAML}/${OUT_INFO}         " # becomes PLUSYAM
[YAM_PLUS_SQL]="    -p              -if yaml -of sql   ${IN_YAML} -i2 ${IN_YAML2}  ${OUT}/${OUT_SQL}                         -oi ${OUT}/${OUT_SQL}/${OUT_INFO}          "
[YAM_PLUS_WNB]="    -p              -if yaml -of wndb  ${IN_YAML} -i2 ${IN_YAML2}  ${OUT}/${OUT_WNDB}                        -oi ${OUT}/${OUT_WNDB}/${OUT_INFO}         "
[YAM_PLUS_WNB_C]="  -p -wp -wl -wv  -if yaml -of wndb  ${IN_YAML} -i2 ${IN_YAML2}  ${OUT}/${OUT_WNDB}_compat                 -oi ${OUT}/${OUT_WNDB}_compat/${OUT_INFO}  "
[YAM_PLUS_JSN_O]="  -p -os o        -if yaml -of json  ${IN_YAML} -i2 ${IN_YAML2}  ${OUT}/${OUT_JSON}                        -oi ${OUT}/${OUT_JSON}/${OUT_INFO}         "
[YAM_PLUS_JSN_O1]=" -p -os o -o1    -if yaml -of json  ${IN_YAML} -i2 ${IN_YAML2}  ${OUT}/${OUT_JSON}1                       -oi ${OUT}/${OUT_JSON}1/${OUT_INFO}        "
[YAM_PLUS_JSN_DA]=" -p -os d -oj a  -if yaml -of json  ${IN_YAML} -i2 ${IN_YAML2}  ${OUT}/${OUT_JSON}_data                   -oi ${OUT}/${OUT_JSON}_data/${OUT_INFO}    "
[YAM_PLUS_JSN_DV]=" -p -os d -oj v  -if yaml -of json  ${IN_YAML} -i2 ${IN_YAML2}  ${OUT}/${OUT_JSON}_data_vw                -oi ${OUT}/${OUT_JSON}_data_vw/${OUT_INFO} "
[YAM_PLUS_JSN_DJ]=" -p -os d -oj j  -if yaml -of json  ${IN_YAML} -i2 ${IN_YAML2}  ${OUT}/${OUT_JSON}_data_je                -oi ${OUT}/${OUT_JSON}_data_je/${OUT_INFO} "
[YAM_PLUS_JSN_D1]=" -p -os d -o1    -if yaml -of json  ${IN_YAML} -i2 ${IN_YAML2}  ${OUT}/${OUT_JSON}_data1                  -oi ${OUT}/${OUT_JSON}_data1/${OUT_INFO}   "
[YAM_PLUS_JSN_M]="  -p -os m        -if yaml -of json  ${IN_YAML} -i2 ${IN_YAML2}  ${OUT}/${OUT_JSON}_model/${OUT_JSON_FILE} -oi ${OUT}/${OUT_JSON}_model/${OUT_INFO}   "
)
export KEYS_PLUS="${!BY_KEY_PLUS[@]}"
export KEYS_PLUS="YAM_PLUS_SER YAM_PLUS_YAM YAM_PLUS_SQL YAM_PLUS_WNB YAM_PLUS_WNB_C YAM_PLUS_JSN_O YAM_PLUS_JSN_O1 YAM_PLUS_JSN_DA YAM_PLUS_JSN_DV YAM_PLUS_JSN_DJ YAM_PLUS_JSN_D1 YAM_PLUS_JSN_M"
