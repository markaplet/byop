# ----------------------------------------------------------------------
# COURSE SETUP
# Converts named entities to armor stands to mark start and end of course
# ----------------------------------------------------------------------

execute @e[name=Course_Start] ~ ~ ~ /summon armor_stand ~ ~ ~ {CustomName:"courseStart",NoGravity:1b,Invisible:1,Invulnerable:1}
tp @e[name=Course_Start] ~ ~-256 ~
execute @e[name=Course_End] ~ ~ ~ /summon armor_stand ~ ~ ~ {CustomName:"courseEnd",NoGravity:1b,Invisible:1,Invulnerable:1}
tp @e[name=Course_End] ~ ~-256 ~