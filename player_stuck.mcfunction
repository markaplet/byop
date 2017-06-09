# ----------------------------------------------------------------------
# PLAYER IS STUCK
# Players can use carrot on a stick to reset level
# ----------------------------------------------------------------------

execute @a[score_carrotStick_min=1,score_carrotStick_min=1] ~ ~ ~ /tp @a[c=1] @e[type=armor_stand,name=courseStart]
execute @a[score_carrotStick_min=1,score_carrotStick_min=1] ~ ~ ~ /scoreboard players set @a[c=1] respawns 0
execute @a[score_carrotStick_min=1,score_carrotStick_min=1] ~ ~ ~ /scoreboard players set @a[c=1] parkourMaster 1
scoreboard players set @a carrotStick 0