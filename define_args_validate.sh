#!/b$IN/bash

# Copyright (c) 2021-2026. Bernard Bou.

IN=in
IN2=in_parts

declare -A BY_KEY_VALIDATE
export BY_KEY_VALIDATE=(
#              SCHEMA  INPUT
#________________________________________________
[DATA_PARTS]="data     $IN2/data/00001740-a.json $IN2/data/00001740-n.json $IN2/data/00001740-v.json $IN2/data/00001740-r.json $IN2/data/row%1:04:00::.json $IN2/data/row%1:06:00::.json $IN2/data/row%1:07:00::.json $IN2/data/row%1:10:00::.json $IN2/data/row%1:14:00::.json $IN2/data/row%1:14:01::.json $IN2/data/row%1:17:00::.json $IN2/data/row%2:38:00::.json $IN2/data/row.json $IN2/data/grow.json"
[DATA_SUBSET]="data    $IN2/data/model-subset.json"
[DATA_SUBSET1]="data1  $IN2/data/model-subset1.json"
[DATA_WHOLE1]="data    $IN/json_data1/oewn.json $IN/json_data1/oewn-frames.json $IN/json_data1/oewn-templates.json"
[DATA_WHOLE]="data     $IN/json_data_je/oewn-lexes.json $IN/json_data_je/oewn-synsets.json $IN/json_data_je/oewn-senses.json $IN/json_data_je/oewn-frames.json $IN/json_data_je/oewn-templates.json"
[DATA1_WHOLE1]="data1  $IN/json_data1/oewn.json"

[OEWN_PARTS]="oewn     $IN2/oewn/00001740-a.json $IN2/oewn/00001740-n.json $IN2/oewn/00001740-v.json $IN2/oewn/00001740-r.json $IN2/oewn/row%1:04:00::.json $IN2/oewn/row%1:06:00::.json $IN2/oewn/row%1:07:00::.json $IN2/oewn/row%1:10:00::.json $IN2/oewn/row%1:14:00::.json $IN2/oewn/row%1:14:01::.json $IN2/oewn/row%1:17:00::.json $IN2/oewn/row%2:38:00::.json $IN2/oewn/row.json $IN2/oewn/grow.json"
[OEWN_SUBSET]="oewn    $IN2/oewn/model-subset.json"
[OEWN_SUBSET1]="oewn1  $IN2/oewn/model-subset1.json"
[OEWN_WHOLE]="oewn     $IN/json/entries-0.json $IN/json/entries-a.json $IN/json/entries-b.json $IN/json/entries-c.json $IN/json/entries-d.json $IN/json/entries-e.json $IN/json/entries-f.json $IN/json/entries-g.json $IN/json/entries-h.json $IN/json/entries-i.json $IN/json/entries-j.json $IN/json/entries-k.json $IN/json/entries-l.json $IN/json/entries-m.json $IN/json/entries-n.json $IN/json/entries-o.json $IN/json/entries-p.json $IN/json/entries-q.json $IN/json/entries-r.json $IN/json/entries-s.json $IN/json/entries-t.json $IN/json/entries-u.json $IN/json/entries-v.json $IN/json/entries-w.json $IN/json/entries-x.json $IN/json/entries-y.json $IN/json/entries-z.json $IN/json/adj.all.json $IN/json/adj.pert.json $IN/json/adj.ppl.json $IN/json/adv.all.json $IN/json/noun.act.json $IN/json/noun.animal.json $IN/json/noun.artifact.json $IN/json/noun.attribute.json $IN/json/noun.body.json $IN/json/noun.cognition.json $IN/json/noun.communication.json $IN/json/noun.event.json $IN/json/noun.feeling.json $IN/json/noun.food.json $IN/json/noun.group.json $IN/json/noun.location.json $IN/json/noun.motive.json $IN/json/noun.object.json $IN/json/noun.person.json $IN/json/noun.phenomenon.json $IN/json/noun.plant.json $IN/json/noun.possession.json $IN/json/noun.process.json $IN/json/noun.quantity.json $IN/json/noun.relation.json $IN/json/noun.shape.json $IN/json/noun.state.json $IN/json/noun.substance.json $IN/json/noun.time.json $IN/json/noun.Tops.json $IN/json/verb.body.json $IN/json/verb.change.json $IN/json/verb.cognition.json $IN/json/verb.communication.json $IN/json/verb.competition.json $IN/json/verb.consumption.json $IN/json/verb.contact.json $IN/json/verb.creation.json $IN/json/verb.emotion.json $IN/json/verb.motion.json $IN/json/verb.perception.json $IN/json/verb.possession.json $IN/json/verb.social.json $IN/json/verb.stative.json $IN/json/verb.weather.json"
[OEWN_WHOLE1]="oewn    $IN/json1/oewn.json"
[OEWN1_WHOLE1]="oewn1  $IN/json1/oewn.json"

[FRAMES]="frames       $IN/json/frames.json $IN/json1/frames.json $IN/json_data_je/oewn-frames.json $IN/json_data1/oewn-frames.json"
[TEMPLATES]="templates $IN/json/templates.json $IN/json1/templates.json $IN/json_data_je/oewn-templates.json $IN/json_data1/oewn-templates.json"
)
export KEYS_VALIDATE="${!BY_KEY_VALIDATE[@]}"
export KEYS_VALIDATE="
DATA_PARTS DATA_SUBSET DATA_WHOLE1 DATA_WHOLE DATA1_WHOLE1
OEWN_PARTS OEWN_SUBSET OEWN_SUBSET1 OEWN_WHOLE OEWN_WHOLE1 OEWN1_WHOLE1
FRAMES TEMPLATES
"