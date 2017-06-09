# ----------------------------------------------------------------------
# CONTROL PLAYER CHECKPOINTS
# Set continual checkpoints for successful jumps
# ----------------------------------------------------------------------

scoreboard players tag @a[tag=onBarrier] remove onBarrier
execute @a ~ ~ ~ detect ~ ~-1 ~ minecraft:barrier -1 scoreboard players tag @a[c=1] add onBarrier
scoreboard players set @a onGround 0
scoreboard players set @a[tag=!onBarrier] onGround 1 {OnGround:1b}
scoreboard players tag @a[tag=inStand] remove inStand
execute @a[score_onGround_min=1] ~ ~ ~ execute @e[type=armor_stand,tag=checkPoint,r=1] ~ ~ ~ scoreboard players tag @a[r=1] add inStand
execute @a[score_onGround_min=1,tag=!inStand] ~ ~ ~ summon armor_stand ~ ~ ~ {Tags:["newCheckPoint"],Invulnerable:1,Marker:1,NoGravity:1,Invisible:1}
execute @e[tag=newCheckPoint] ~ ~ ~ scoreboard players operation @e[tag=newCheckPoint,c=1] id = @a[c=1] id
entitydata @e[tag=newCheckPoint] {Tags:["checkPoint"]}
scoreboard players add @e[tag=checkPoint] killTimer 1
kill @e[tag=checkPoint,score_killTimer_min=200]
scoreboard players tag @a[tag=respawn] remove respawn
scoreboard players tag @a[tag=onBarrier,c=1] add respawn
execute @e[tag=checkPoint] ~ ~ ~ scoreboard players operation @e[tag=checkPoint,c=1] tempID = @e[tag=checkPoint,c=1] id
execute @e[tag=checkPoint] ~ ~ ~ scoreboard players operation @e[tag=checkPoint,c=1] tempID -= @a[tag=respawn,c=1] id
execute @a[tag=respawn] ~ ~ ~ tp @a[tag=respawn,c=1] @e[tag=checkPoint,score_tempID=0,score_tempID_min=0,c=1]