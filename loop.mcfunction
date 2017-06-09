## MAIN LOOP

## NEW AND RETURNING PLAYERS JOINING SERVER
function byop:player_join

## ENABLE PLAYER BUFFS
function byop:buffs


## PLAYER IS STUCK
function byop:player_stuck


## SETUP COURSE START/END
function byop:course_setup


## SCORE KEEPING
execute @a ~ ~ ~ detect ~ ~-1 ~ minecraft:barrier 0 /scoreboard players add @a[c=1] respawns 1


## CONTROL PLAYER CHECKPOINTS
function byop:player_checkpoint


## CONGRATULATE PLAYER
function byop:winner
