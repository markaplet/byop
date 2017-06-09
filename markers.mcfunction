# ----------------------------------------------------------------------
# COURSE MARKERS
# Gives spawn eggs used to mark the start and end of the course
# ----------------------------------------------------------------------

## COURSE START
give @a minecraft:spawn_egg 1 90 {display:{Name:"Course_Start",Lore:["Marks the beginning of the course"]},ench:[{id:2,lvl:1}],EntityTag:{id:"Pig"}}

## COURSE END
give @a minecraft:spawn_egg 1 58 {display:{Name:"Course_End",Lore:["Marks the end of the course"]},ench:[{id:0,lvl:1}],EntityTag:{id:"Enderman"}}
