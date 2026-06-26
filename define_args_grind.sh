#!/bin/bash

# Copyright (c) 2021-2026. Bernard Bou.

IN_YAML=yaml
IN_YAML2=yaml2
OUT=out

OUT_INFO=oewn.info
OUT_SER=ser/oewn.ser
OUT_SER2=ser/oewn.ser.info
OUT_YAML=yaml
OUT_WNDB=wndb
OUT_JSON=json
OUT_JSON_FILE=oewn-model.json
OUT_SQL=sql

declare -A BY_KEY_GRIND
export BY_KEY_GRIND=(
#            FLAGS            FROM     TO        INPUT      INPUT2           OUTPUT                                    OUTPUT2
#__________________________________________________________________________________________________________________________________________________________________
[YAM_SER]="               -iv -if yaml -of ser   ${IN_YAML} -i2 ${IN_YAML2}  ${OUT}/${OUT_SER}                         -oi ${OUT}/${OUT_SER2}                     "
[YAM_YAM]="               -iv -if yaml -of yaml  ${IN_YAML} -i2 ${IN_YAML2}  ${OUT}/${OUT_YAML}                        -oi ${OUT}/${OUT_YAML}/${OUT_INFO}         "
[YAM_SQL]="               -iv -if yaml -of sql   ${IN_YAML} -i2 ${IN_YAML2}  ${OUT}/${OUT_SQL}                         -oi ${OUT}/${OUT_SQL}/${OUT_INFO}          "
[YAM_WNB]="               -iv -if yaml -of wndb  ${IN_YAML} -i2 ${IN_YAML2}  ${OUT}/${OUT_WNDB}                        -oi ${OUT}/${OUT_WNDB}/${OUT_INFO}         "
[YAM_WNB_C]=" -wp -wl -wv -iv -if yaml -of wndb  ${IN_YAML} -i2 ${IN_YAML2}  ${OUT}/${OUT_WNDB}_compat                 -oi ${OUT}/${OUT_WNDB}_compat/${OUT_INFO}  "
[YAM_JSN_O]=" -os o       -iv -if yaml -of json  ${IN_YAML} -i2 ${IN_YAML2}  ${OUT}/${OUT_JSON}                        -oi ${OUT}/${OUT_JSON}/${OUT_INFO}         "
[YAM_JSN_O1]="-os o -o1   -iv -if yaml -of json  ${IN_YAML} -i2 ${IN_YAML2}  ${OUT}/${OUT_JSON}1                       -oi ${OUT}/${OUT_JSON}1/${OUT_INFO}        "
[YAM_JSN_DA]="-os d -oj a -iv -if yaml -of json  ${IN_YAML} -i2 ${IN_YAML2}  ${OUT}/${OUT_JSON}_data                   -oi ${OUT}/${OUT_JSON}_data/${OUT_INFO}    "
[YAM_JSN_DV]="-os d -oj v -iv -if yaml -of json  ${IN_YAML} -i2 ${IN_YAML2}  ${OUT}/${OUT_JSON}_data_vw                -oi ${OUT}/${OUT_JSON}_data_vw/${OUT_INFO} "
[YAM_JSN_DJ]="-os d -oj j -iv -if yaml -of json  ${IN_YAML} -i2 ${IN_YAML2}  ${OUT}/${OUT_JSON}_data_je                -oi ${OUT}/${OUT_JSON}_data_je/${OUT_INFO} "
[YAM_JSN_D1]="-os d -o1   -iv -if yaml -of json  ${IN_YAML} -i2 ${IN_YAML2}  ${OUT}/${OUT_JSON}_data1                  -oi ${OUT}/${OUT_JSON}_data1/${OUT_INFO}   "
[YAM_JSN_M]=" -os m       -iv -if yaml -of json  ${IN_YAML} -i2 ${IN_YAML2}  ${OUT}/${OUT_JSON}_model/${OUT_JSON_FILE} -oi ${OUT}/${OUT_JSON}_model/${OUT_INFO}   "
)
export KEYS_GRIND="${!BY_KEY_GRIND[@]}"
export KEYS_GRIND="YAM_SER YAM_YAM YAM_SQL YAM_WNB YAM_WNB_C YAM_JSN_O YAM_JSN_O1 YAM_JSN_DA YAM_JSN_DV YAM_JSN_DJ YAM_JSN_D1 YAM_JSN_M"
