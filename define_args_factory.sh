#!/bin/bash

# Copyright (c) 2021-2026. Bernard Bou.

IN=out
IN_PLUS=out-plus
IN1=.
IN2=.

declare -A BY_KEY_FACTORY
export BY_KEY_FACTORY=(
#          FLAGS        FROM      INPUT
#___________________________ ______________________________________
[SER]="                -if ser   ${IN}/ser/oewn.ser               "
[YAM]="                -if yaml  ${IN}/yaml                       "
[JSN_O]="  -is o       -if json  ${IN}/json                       "
[JSN_O1]=" -is o -i1   -if json  ${IN}/json1                      "
[JSN_DA]=" -is d -ij a -if json  ${IN}/json_data                  "
[JSN_DJ]=" -is d -ij j -if json  ${IN}/json_data_je               "
[JSN_DV]=" -is d -ij v -if json  ${IN}/json_data_vw               "
[JSN_D1]=" -is d -i1   -if json  ${IN}/json_data1                 "
[JSN_M]="  -is m       -if json  ${IN}/json_model/oewn-model.json "
[WNB]="                -if wndb  ${IN}/wndb                       "
[WNB_C]="              -if wndb  ${IN}/wndb_compat                "
[YAM31]="-nt           -if yaml  ${IN_PLUS}/yaml31                "

[YAM_PLUS]=" -p        -if yaml  ${IN1}/yamlplus -i2 ${IN2}/yaml2 "
[PLUSYAM]="            -if yaml  ${IN=PLUS}/yaml                  "
)
export KEYS_FACTORY="${!BY_KEY_FACTORY[@]}"
export KEYS_FACTORY="SER YAM JSN_O JSN_O1 JSN_DA JSN_DJ JSN_DV JSN_D1 JSN_M WNB WNB_C YAM31 YAM_PLUS PLUSYAM"
