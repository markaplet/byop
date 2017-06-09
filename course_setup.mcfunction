# ----------------------------------------------------------------------
# COURSE SETUP
# Converts named entities to armor stands to mark start and end of course
# ----------------------------------------------------------------------

## COURSE START 
execute @e[name=Course_Start] ~ ~ ~ summon armor_stand ~ ~ ~ {CustomName:"courseStart",NoGravity:1b,Invisible:1,Invulnerable:1}
tp @e[name=Course_Start] ~ ~-256 ~

## COURSE END
execute @e[name=Course_End] ~ ~ ~ summon armor_stand ~ ~ ~ {CustomName:"courseEnd",NoGravity:1b,Invisible:1,Invulnerable:1}
tp @e[name=Course_End] ~ ~-256 ~

## REMOVE NEAREST MARKER
execute @e[name=Clear_Marker] ~ ~ ~ kill @e[type=armor_stand,c=1]
tp @e[name=Clear_Marker] ~ ~-256 ~