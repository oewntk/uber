#!/bin/bash

# Copyright (c) 2021-2026. Bernard Bou.

IN=.
IN2=.
OUT=out-plus

declare -A BY_KEY_PLUS
export BY_KEY_PLUS=(
#                   FLAGS           FROM     TO        INPUT           INPUT2            OUTPUT                             OUTPUT2
#______________________________________________________________________________________________________________________________________________________________
[YAM_PLUS_SER]="    -p              -if yaml -of ser   ${IN}/yamlplus  -i2 ${IN2}/yaml2  ${OUT}/ser/oewn.ser                -oi ${OUT}/ser/oewn.info          "
[YAM_PLUS_YAM]="    -p -om          -if yaml -of yaml  ${IN}/yamlplus  -i2 ${IN2}/yaml2  ${OUT}/yaml                        -oi ${OUT}/yaml/oewn.info         " # becomes PLUSYAM
[YAM_PLUS_SQL]="    -p              -if yaml -of sql   ${IN}/yamlplus  -i2 ${IN2}/yaml2  ${OUT}/sql                         -oi ${OUT}/sql/oewn.info          "
[YAM_PLUS_WNB]="    -p              -if yaml -of wndb  ${IN}/yamlplus  -i2 ${IN2}/yaml2  ${OUT}/wndb                        -oi ${OUT}/wndb/oewn.info         "
[YAM_PLUS_WNB_C]="  -p -wp -wl -wv  -if yaml -of wndb  ${IN}/yamlplus  -i2 ${IN2}/yaml2  ${OUT}/wndb_compat                 -oi ${OUT}/wndb_compat/oewn.info  "
[YAM_PLUS_JSN_O]="  -p -os o        -if yaml -of json  ${IN}/yamlplus  -i2 ${IN2}/yaml2  ${OUT}/json                        -oi ${OUT}/json/oewn.info         "
[YAM_PLUS_JSN_O1]=" -p -os o -o1    -if yaml -of json  ${IN}/yamlplus  -i2 ${IN2}/yaml2  ${OUT}/json1                       -oi ${OUT}/json1/oewn.info        "
[YAM_PLUS_JSN_DA]=" -p -os d -oj a  -if yaml -of json  ${IN}/yamlplus  -i2 ${IN2}/yaml2  ${OUT}/json_data                   -oi ${OUT}/json_data/oewn.info    "
[YAM_PLUS_JSN_DV]=" -p -os d -oj v  -if yaml -of json  ${IN}/yamlplus  -i2 ${IN2}/yaml2  ${OUT}/json_data_vw                -oi ${OUT}/json_data_vw/oewn.info "
[YAM_PLUS_JSN_DJ]=" -p -os d -oj j  -if yaml -of json  ${IN}/yamlplus  -i2 ${IN2}/yaml2  ${OUT}/json_data_je                -oi ${OUT}/json_data_je/oewn.info "
[YAM_PLUS_JSN_D1]=" -p -os d -o1    -if yaml -of json  ${IN}/yamlplus  -i2 ${IN2}/yaml2  ${OUT}/json_data1                  -oi ${OUT}/json_data1/oewn.info   "
[YAM_PLUS_JSN_M]="  -p -os m        -if yaml -of json  ${IN}/yamlplus  -i2 ${IN2}/yaml2  ${OUT}/json_model/oewn-model.json  -oi ${OUT}/json_model/oewn.info   "

[WNB31_YAM]="       -iv             -if wndb -of yaml  ${IN}/wndb31    -i2 ${IN2}/wndb2  ${OUT}/yaml31                      -oi ${OUT}/wndb31/wn31.info       "
[WNB31_SQL]="       -iv             -if wndb -of sql   ${IN}/wndb31    -i2 ${IN2}/wndb2  ${OUT}/sql31                       -oi ${OUT}/sql31/wn31.info        "
)
export KEYS_PLUS="${!BY_KEY_PLUS[@]}"
export KEYS_PLUS="YAM_PLUS_SER YAM_PLUS_YAM YAM_PLUS_SQL YAM_PLUS_WNB YAM_PLUS_WNB_C YAM_PLUS_JSN_O YAM_PLUS_JSN_O1 YAM_PLUS_JSN_DA YAM_PLUS_JSN_DV YAM_PLUS_JSN_DJ YAM_PLUS_JSN_D1 YAM_PLUS_JSN_M WNB31_YAM WNB31_SQL"
