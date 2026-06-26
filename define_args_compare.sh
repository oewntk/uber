#!/bin/bash

# Copyright (c) 2021-2026. Bernard Bou.

IN1=.
IN2=out

IN_SER=ser
IN_YAML=yaml
IN_YAML2=yaml2
IN_YAMLPLUS=yamlplus
IN_WNDB=wndb
IN_JSON=json
IN_SQL=sql/data

IN_JSON_FILE=oewn-model.json
IN_SER_FILE=oewn.ser

declare -A BY_KEY_COMPARE
export BY_KEY_COMPARE=(
#               FLAGS              A         B          A INPUT + INPUT2                        B INPUT
#________________________________________________________________________________________________________________________________________
# with yaml source
[YAM_SER]="                        -Aif yaml -Bif ser   ${IN_YAML} -Ai2 ${IN_YAML2}             ${IN2}/${IN_SER}/${IN_SER_FILE}         "
[YAM_YAM]="                        -Aif yaml -Bif yaml  ${IN_YAML} -Ai2 ${IN_YAML2}             ${IN2}/${IN_YAML}                       "
[YAM_WNB]="                        -Aif yaml -Bif wndb  ${IN_YAML} -Ai2 ${IN_YAML2}             ${IN2}/${IN_WNDB}                       "
[YAM_WNB_C]="                      -Aif yaml -Bif wndb  ${IN_YAML} -Ai2 ${IN_YAML2}             ${IN2}/${IN_WNDB}                       "
[YAM_JSN_O]="   -Bis o             -Aif yaml -Bif json  ${IN_YAML} -Ai2 ${IN_YAML2}             ${IN2}/${IN_JSON}                       "
[YAM_JSN_O1]="  -Bis o -Bi1        -Aif yaml -Bif json  ${IN_YAML} -Ai2 ${IN_YAML2}             ${IN2}/${IN_JSON}1                      "
[YAM_JSN_D]="   -Bis d             -Aif yaml -Bif json  ${IN_YAML} -Ai2 ${IN_YAML2}             ${IN2}/${IN_JSON}_data                  "
[YAM_JSN_D1]="  -Bis d -Bi1        -Aif yaml -Bif json  ${IN_YAML} -Ai2 ${IN_YAML2}             ${IN2}/${IN_JSON}_data1                 "
[YAM_JSN_M]="   -Bis m             -Aif yaml -Bif json  ${IN_YAML} -Ai2 ${IN_YAML2}             ${IN2}/${IN_JSON}_model/${IN_JSON_FILE} "

# with model
[JSN_M_JSN_O]=" -Ais m -Bis o      -Aif json -Bif json  ${IN2}/${IN_JSON}_model/${IN_JSON_FILE} ${IN2}/${IN_JSON}                       "
[JSN_M_JSN_O1]="-Ais m -Bis o -Bi1 -Aif json -Bif json  ${IN2}/${IN_JSON}_model/${IN_JSON_FILE} ${IN2}/${IN_JSON}1                      "
[JSN_M_JSN_D]=" -Ais m -Bis d      -Aif json -Bif json  ${IN2}/${IN_JSON}_model/${IN_JSON_FILE} ${IN2}/${IN_JSON}_data                  "
[JSN_M_JSN_D1]="-Ais m -Bis d -Bi1 -Aif json -Bif json  ${IN2}/${IN_JSON}_model/${IN_JSON_FILE} ${IN2}/${IN_JSON}_data1                 "

# generated plus with saved plus
[YAM_PLUS_PLUSYAM]=" -Ap -Av -Bv   -Aif yaml -Bif yaml  ${IN_YAMLPLUS} -Ai2 ${IN_YAML2}         ${IN2}-plus/${IN_YAML}                  "
)
export KEYS_COMPARE="${!BY_KEY_COMPARE[@]}"
export KEYS_COMPARE="YAM_JSN_M YAM_SER YAM_YAM YAM_WNB YAM_WND_C YAM_JSN_O YAM_JSN_O1 YAM_JSN_D YAM_JSN_D1 JSN_M_JSN_O JSN_M_JSN_O1 JSN_M_JSN_D JSN_M_JSN_D1 YAM_PLUS_PLUSYAM"
