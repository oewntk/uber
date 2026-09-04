#!/bin/bash

# Copyright (c) 2021-2026. Bernard Bou.

IN=.
IN2=.
INB=out
INB_PLUS=out-plus

declare -A BY_KEY_COMPARE
export BY_KEY_COMPARE=(
#               FLAGS                        A         B          A INPUT + INPUT2                        B INPUT
#____________________________________________________________________________________________________________________________________________
# with yaml source
[YAM_SER]="     -Ar -Br                     -Aif yaml -Bif ser   ${IN}/yaml -Ai2 ${IN2}/yaml2            ${INB}/ser/oewn.ser               "
[YAM_YAM]="     -Ar -Br                     -Aif yaml -Bif yaml  ${IN}/yaml -Ai2 ${IN2}/yaml2            ${INB}/yaml                       "
[YAM_JSN_O]="   -Ar -Br -Bis o              -Aif yaml -Bif json  ${IN}/yaml -Ai2 ${IN2}/yaml2            ${INB}/json                       "
[YAM_JSN_O1]="  -Ar -Br -Bis o -Bi1         -Aif yaml -Bif json  ${IN}/yaml -Ai2 ${IN2}/yaml2            ${INB}/json1                      "
[YAM_JSN_D]="   -Ar -Br -Bis d              -Aif yaml -Bif json  ${IN}/yaml -Ai2 ${IN2}/yaml2            ${INB}/json_data_je               "
[YAM_JSN_D1]="  -Ar -Br -Bis d -Bi1         -Aif yaml -Bif json  ${IN}/yaml -Ai2 ${IN2}/yaml2            ${INB}/json_data1                 "
[YAM_JSN_M]="   -Ar -Br -Bis m              -Aif yaml -Bif json  ${IN}/yaml -Ai2 ${IN2}/yaml2            ${INB}/json_model/oewn-model.json "
[YAM_WNB]="     -Ar -Br                     -Aif yaml -Bif wndb  ${IN}/yaml -Ai2 ${IN2}/yaml2            ${INB}/wndb                       "
[YAM_WNB_C]="   -Ar -Br                     -Aif yaml -Bif wndb  ${IN}/yaml -Ai2 ${IN2}/yaml2            ${INB}/wndb_compat                "

# with model
[JSN_M_JSN_O]=" -Ar -Br -Ais m -Bis o       -Aif json -Bif json  ${INB}/json_model/oewn-model.json       ${INB}/json                       "
[JSN_M_JSN_O1]="-Ar -Br -Ais m -Bis o -Bi1  -Aif json -Bif json  ${INB}/json_model/oewn-model.json       ${INB}/json1                      "
[JSN_M_JSN_D]=" -Ar -Br -Ais m -Bis d       -Aif json -Bif json  ${INB}/json_model/oewn-model.json       ${INB}/json_data_je               "
[JSN_M_JSN_D1]="-Ar -Br -Ais m -Bis d -Bi1  -Aif json -Bif json  ${INB}/json_model/oewn-model.json       ${INB}/json_data1                 "

# generated plus with saved plus
[YAM_PLUS_PLUSYAM]=" -Ap -Ar -Br            -Aif yaml -Bif yaml  ${IN}/yamlplus -Ai2 ${IN2}/yaml2        ${INB_PLUS}/yaml                  "
)
export KEYS_COMPARE="${!BY_KEY_COMPARE[@]}"
export KEYS_COMPARE="
YAM_JSN_M YAM_SER YAM_YAM YAM_JSN_M YAM_JSN_O YAM_JSN_O1 YAM_JSN_D YAM_JSN_D1
JSN_M_JSN_O JSN_M_JSN_O1 JSN_M_JSN_D JSN_M_JSN_D1
YAM_PLUS_PLUSYAM
"

# exclude YAM_WNB YAM_WNB_C because WNDB is a lossy format