#!/bin/bash

# Copyright (c) 2021-2026. Bernard Bou.

IN=.
IN2=.
OUT=out

declare -A BY_KEY_GRIND
export BY_KEY_GRIND=(
#            FLAGS            FROM     TO        INPUT        INPUT2            OUTPUT                             OUTPUT2
#_____________________________________________________________________________________________________________________________________________________
[YAM_SER]="               -iv -if yaml -of ser   ${IN}/yaml   -i2 ${IN2}/yaml2  ${OUT}/ser/oewn.ser                -oi ${OUT}/ser/oewn.info          "
[YAM_YAM]="               -iv -if yaml -of yaml  ${IN}/yaml   -i2 ${IN2}/yaml2  ${OUT}/yaml                        -oi ${OUT}/yaml/oewn.info         "
[YAM_SQL]="               -iv -if yaml -of sql   ${IN}/yaml   -i2 ${IN2}/yaml2  ${OUT}/sql                         -oi ${OUT}/sql/oewn.info          "
[YAM_WNB]="               -iv -if yaml -of wndb  ${IN}/yaml   -i2 ${IN2}/yaml2  ${OUT}/wndb                        -oi ${OUT}/wndb/oewn.info         "
[YAM_WNB_C]=" -wp -wl -wv -iv -if yaml -of wndb  ${IN}/yaml   -i2 ${IN2}/yaml2  ${OUT}/wndb_compat                 -oi ${OUT}/wndb_compat/oewn.info  "
[YAM_JSN_O]=" -os o       -iv -if yaml -of json  ${IN}/yaml   -i2 ${IN2}/yaml2  ${OUT}/json                        -oi ${OUT}/json/oewn.info         "
[YAM_JSN_O1]="-os o -o1   -iv -if yaml -of json  ${IN}/yaml   -i2 ${IN2}/yaml2  ${OUT}/json1                       -oi ${OUT}/json1/oewn.info        "
[YAM_JSN_DA]="-os d -oj a -iv -if yaml -of json  ${IN}/yaml   -i2 ${IN2}/yaml2  ${OUT}/json_data                   -oi ${OUT}/json_data/oewn.info    "
[YAM_JSN_DV]="-os d -oj v -iv -if yaml -of json  ${IN}/yaml   -i2 ${IN2}/yaml2  ${OUT}/json_data_vw                -oi ${OUT}/json_data_vw/oewn.info "
[YAM_JSN_DJ]="-os d -oj j -iv -if yaml -of json  ${IN}/yaml   -i2 ${IN2}/yaml2  ${OUT}/json_data_je                -oi ${OUT}/json_data_je/oewn.info "
[YAM_JSN_D1]="-os d -o1   -iv -if yaml -of json  ${IN}/yaml   -i2 ${IN2}/yaml2  ${OUT}/json_data1                  -oi ${OUT}/json_data1/oewn.info   "
[YAM_JSN_M]=" -os m       -iv -if yaml -of json  ${IN}/yaml   -i2 ${IN2}/yaml2  ${OUT}/json_model/oewn-model.json  -oi ${OUT}/json_model/oewn.info   "
)
export KEYS_GRIND="${!BY_KEY_GRIND[@]}"
export KEYS_GRIND="YAM_SER YAM_YAM YAM_SQL YAM_WNB YAM_WNB_C YAM_JSN_O YAM_JSN_O1 YAM_JSN_DA YAM_JSN_DV YAM_JSN_DJ YAM_JSN_D1 YAM_JSN_M"
