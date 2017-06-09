## MAIN LOOP

## NEW AND RETURNING PLAYERS JOINING SERVER
function parkour:player_join

## ENABLE PLAYER BUFFS
function parkour:buffs


## PLAYER IS STUCK
function parkour:player_stuck


## SETUP COURSE START/END
function parkour:course_setup


## SCORE KEEPING
execute @a ~ ~ ~ detect ~ ~-1 ~ minecraft:barrier 0 /scoreboard players add @a[c=1] respawns 1


## CONTROL PLAYER CHECKPOINTS
function parkour:player_checkpoint


## CONGRATULATE PLAYER
function parkour:winner
