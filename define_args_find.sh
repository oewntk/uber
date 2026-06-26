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

declare -A BY_KEY_FIND
export BY_KEY_FIND=(
#              FLAGS        FROM      INPUT
#_________________________________________________________________________________
[SER]="                    -if ser   ${IN}/${IN_SER}                             "
[YAM]="                    -if yaml  ${IN}/${IN_YAML}                            "
[JSN_O]="      -is o       -if json  ${IN}/${IN_JSON}                            "
[JSN_O1]="     -is o -i1   -if json  ${IN}/${IN_JSON}1                           "
[JSN_DA]="     -is d -ij a -if json  ${IN}/${IN_JSON}_data                       "
[JSN_DJ]="     -is d -ij j -if json  ${IN}/${IN_JSON}_data_je                    "
[JSN_DV]="     -is d -ij v -if json  ${IN}/${IN_JSON}_data_vw                    "
[JSN_D1]="     -is d -i1   -if json  ${IN}/${IN_JSON}_data1                      "
[JSN_M]="      -is m       -if json  ${IN}/${IN_JSON}_model/${IN_JSON_FILE}      "
[WNB]="                    -if wndb  ${IN}/${IN_WNDB}                            "
[WNB_C]="                  -if wndb  ${IN}/${IN_WNDB}_compat                     "

[YAM_PLUS]="-p             -if yaml  ${IN_YAMLPLUS} -i2 ${IN_YAML2}              "

[PLUSSER]="                -if ser   ${IN}-plus/${IN_SER}                        "
[PLUSYAM]="                -if yaml  ${IN}-plus/${IN_YAML}                       "
[PLUSJSN_O]="  -is o       -if json  ${IN}-plus/${IN_JSON}                       "
[PLUSJSN_O1]=" -is o -i1   -if json  ${IN}-plus/${IN_JSON}1                      "
[PLUSJSN_DA]=" -is d -ij a -if json  ${IN}-plus/${IN_JSON}_data                  "
[PLUSJSN_DJ]=" -is d -ij j -if json  ${IN}-plus/${IN_JSON}_data_je               "
[PLUSJSN_DV]=" -is d -ij v -if json  ${IN}-plus/${IN_JSON}_data_vw               "
[PLUSJSN_D1]=" -is d -i1   -if json  ${IN}-plus/${IN_JSON}_data1                 "
[PLUSJSN_M]="  -is m       -if json  ${IN}-plus/${IN_JSON}_model/${IN_JSON_FILE} "
[PLUSWNB]="                -if wndb  ${IN}-plus/${IN_WNDB}                       "
[PLUSWNB_C]="              -if wndb  ${IN}-plus/${IN_WNDB}_compat                "
)
export KEYS_FIND="${!BY_KEY_FIND[@]}"
export KEYS_FIND="
    SER     YAM     JSN_O     JSN_O1     JSN_DA     JSN_DJ     JSN_DV     JSN_D1     JSN_M     WNB     WNB_C
PLUSSER PLUSYAM PLUSJSN_O PLUSJSN_O1 PLUSJSN_DA PLUSJSN_DJ PLUSJSN_DV PLUSJSN_D1 PLUSJSN_M PLUSWNB PLUSWNB_C
YAM_PLUS"

declare -A BY_KEY_OUT
export BY_KEY_OUT=(
#          FLAGS
#_________________________________
[YAM_O]="  -of yaml -os o        "
[YAM_D]="  -of yaml -os d        "

[JSN_O]="  -of json -os o        "
[JSN_DA]=" -of json -os d -oj a  "
[JSN_DJ]=" -of json -os d -oj j  "
[JSN_DV]=" -of json -os d -oj v  "
[JSN_M]="  -of json -os m        "
)

declare -A BY_KEY_YAML_OUT
export BY_KEY_YAML_OUT=(
[AUTO]="   -oy a"
[BLOCK]="  -oy b"
[FLOW]="   -oy f"
[JSON]="   -oy j"
[DEFAULT]="-oy d"
[COMPAT]=" -oy c"
)

declare -A BY_KEY_JSON_OUT
export BY_KEY_JSON_OUT=(
[PRETTY]=""
[COMPACT]="-oc"
)