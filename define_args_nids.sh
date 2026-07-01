#!/bin/bash

# Copyright (c) 2021-2026. Bernard Bou.

IN=out
IN_PLUS=out-plus
IN1=.
IN2=.

OUT=out_nids
OUT_PLUS=out-plus_nids

declare -A BY_KEY_NIDS
export BY_KEY_NIDS=(
#          FLAGS            FROM      INPUT                                  OUTPUT
#__________________________________________________________________________________________________
[SER]="                     -if ser   ${IN}/ser/oewn.ser                     ${OUT}/ser               "
[YAM]="                     -if yaml  ${IN}/yaml                             ${OUT}/yaml              "
[JSN_O]="  -is o            -if json  ${IN}/json                             ${OUT}/json              "
[JSN_O1]=" -is o -i1        -if json  ${IN}/json1                            ${OUT}/json1             "
[JSN_DA]=" -is d -ij a      -if json  ${IN}/json_data                        ${OUT}/json_data         "
[JSN_DJ]=" -is d -ij j      -if json  ${IN}/json_data_je                     ${OUT}/json_data_je      "
[JSN_DV]=" -is d -ij v      -if json  ${IN}/json_data_vw                     ${OUT}/json_data_vw      "
[JSN_D1]=" -is d -i1        -if json  ${IN}/json_data1                       ${OUT}/json_data1        "
[JSN_M]="  -is m            -if json  ${IN}/json_model/oewn-model.json       ${OUT}/json_model        "
[WNB]="                     -if wndb  ${IN}/wndb                             ${OUT}/wndb              "
[WNB_C]="                   -if wndb  ${IN}/wndb_compat                      ${OUT}/wndb_c            "

[PLUS_SER]="                -if ser   ${IN_PLUS}/ser/oewn.ser                ${OUT_PLUS}/ser          "
[PLUS_YAM]="                -if yaml  ${IN_PLUS}/yaml                        ${OUT_PLUS}/yaml         " # plusyaml
[PLUS_JSN_O]="  -is o       -if json  ${IN_PLUS}/json                        ${OUT_PLUS}/json         "
[PLUS_JSN_O1]=" -is o -i1   -if json  ${IN_PLUS}/json1                       ${OUT_PLUS}/json1        "
[PLUS_JSN_DA]=" -is d -ij a -if json  ${IN_PLUS}/json_data                   ${OUT_PLUS}/json_data    "
[PLUS_JSN_DJ]=" -is d -ij j -if json  ${IN_PLUS}/json_data_je                ${OUT_PLUS}/json_data_je "
[PLUS_JSN_DV]=" -is d -ij v -if json  ${IN_PLUS}/json_data_vw                ${OUT_PLUS}/json_data_vw "
[PLUS_JSN_D1]=" -is d -i1   -if json  ${IN_PLUS}/json_data1                  ${OUT_PLUS}/json_data1   "
[PLUS_JSN_M]="  -is m       -if json  ${IN_PLUS}/json_model/oewn-model.json  ${OUT_PLUS}/json_model   "
[PLUS_WNB]="                -if wndb  ${IN_PLUS}/wndb                        ${OUT_PLUS}/wndb         "
[PLUS_WNB_C]="              -if wndb  ${IN_PLUS}/wndb_compat                 ${OUT_PLUS}/wndb_c       "

[WNB31]="                   -if wndb  ${IN1}/wndb31 -i2 ${IN2}/wndb2         ${OUT_PLUS}/wndb31       "
[YAM31]="-nt                -if yaml  ${IN_PLUS}/yaml31                      ${OUT_PLUS}/yaml31       "

[YAM_PLUS]=" -p             -if yaml  ${IN1}/yamlplus -i2 ${IN2}/yaml2       ${OUT_PLUS}/yamlplus     "
)
export KEYS_NIDS="${!BY_KEY_NIDS[@]}"
export KEYS_NIDS="
SER YAM JSN_O JSN_O1 JSN_DA JSN_DJ JSN_DV JSN_D1 JSN_M  WNB WNB_C
PLUS_SER PLUS_YAM PLUS_JSN_O PLUS_JSN_O1 PLUS_JSN_DA PLUS_JSN_DJ PLUS_JSN_DV PLUS_JSN_D1 PLUS_JSN_M  PLUS_WNB PLUS_WNB_C
WNB31 YAM31
YAM_PLUS"
