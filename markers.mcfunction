# ----------------------------------------------------------------------
# COURSE MARKERS
# Gives spawn eggs used to mark the start and end of the course
# ----------------------------------------------------------------------

## COURSE START
give @a minecraft:spawn_egg 1 90 {display:{Name:"Course_Start",Lore:["Marks the beginning of the course"]},ench:[{id:2,lvl:1}],EntityTag:{id:"minecraft:pig"}}

## COURSE END
give @a minecraft:spawn_egg 1 58 {display:{Name:"Course_End",Lore:["Marks the end of the course"]},ench:[{id:0,lvl:1}],EntityTag:{id:"minecraft:enderman"}}

## REMOVE MARKER
give @a minecraft:spawn_egg 1 93 {display:{Name:"Clear_Marker",Lore:["Removes unwanted markers"]},ench:[{id:0,lvl:1}],EntityTag:{id:"minecraft:chicken"}}
