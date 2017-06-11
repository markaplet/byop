# ----------------------------------------------------------------------
# COURSE SETUP
# Converts named entities to armor stands to mark start and end of course
# ----------------------------------------------------------------------

## COURSE START
execute @e[name=Course_Start] ~ ~ ~ summon minecraft:armor_stand ~ ~ ~ {CustomName:"courseStart",NoGravity:1b,Invisible:1,Invulnerable:1}
tp @e[name=Course_Start] ~ ~-256 ~

## COURSE END
execute @e[name=Course_End] ~ ~ ~ summon minecraft:armor_stand ~ ~ ~ {CustomName:"courseEnd",NoGravity:1b,Invisible:1,Invulnerable:1}
tp @e[name=Course_End] ~ ~-256 ~

## REMOVE NEAREST MARKER
execute @e[name=Clear_Marker] ~ ~ ~ kill @e[type=armor_stand,r=0,c=1]
tp @e[name=Clear_Marker] ~ ~-256 ~

## JUMP BOOST
execute @e[name=Jump_Boost] ~ ~ ~ summon minecraft:armor_stand ~ ~ ~ {CustomName:"jumpBoost",NoGravity:1b,Invisible:1,Invulnerable:1}
tp @e[name=Jump_Boost] ~ ~-256 ~

## SPEED BOOST
execute @e[name=Speed_Boost] ~ ~ ~ summon minecraft:armor_stand ~ ~ ~ {CustomName:"speedBoost",NoGravity:1b,Invisible:1,Invulnerable:1}
tp @e[name=Speed_Boost] ~ ~-256 ~

## BLINDNESS
execute @e[name=Blindness] ~ ~ ~ summon minecraft:armor_stand ~ ~ ~ {CustomName:"blindness",NoGravity:1b,Invisible:1,Invulnerable:1}
tp @e[name=Blindness] ~ ~-256 ~

## SLOWNESS
execute @e[name=Slowness] ~ ~ ~ summon minecraft:armor_stand ~ ~ ~ {CustomName:"slowness",NoGravity:1b,Invisible:1,Invulnerable:1}
tp @e[name=Slowness] ~ ~-256 ~
