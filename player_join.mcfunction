# ----------------------------------------------------------------------
# NEW AND RETURNING PLAYERS JOINING SERVER
# Ensures that all players have a unique id
# Players will get welcome message and equipment 
# ----------------------------------------------------------------------


# NEW PLAYERS UNIQUE ID & WELCOME
scoreboard players add @a id 0
execute @a[score_id=0,c=1] ~ ~ ~ /title @a times 20 100 20
execute @a[score_id=0,c=1] ~ ~ ~ /title @a[score_id=0,c=1] title {"text":"WELCOME","bold":true,"color":"dark_purple"}
execute @a[score_id=0,c=1] ~ ~ ~ /title @a[score_id=0,c=1] subtitle {"text":"Ready to Parkour?","color":"blue"}
execute @a[score_id=0,c=1] ~ ~ ~ /scoreboard players set respawns 0
execute @a[score_id=0,c=1] ~ ~ ~ /give @a minecraft:carrot_on_a_stick 1 0 {Unbreakable:1,display:{Name:"Unstick",Lore:["Right click to reset if stuck"]}}
execute @a[score_id=0,c=1] ~ ~ ~ /tellraw @a ["",{"selector":"@e[score_id=0,c=1]","bold":true,"color":"light_purple"},{"text":" "},{"text":"has joined the server!","color":"aqua"}]


## PLAYERS RETURNING TO SERVER
execute @a[score_playerQuit_min=1] ~ ~ ~ /title @a[c=1] title {"text":"WELCOME BACK","bold":true,"color":"dark_purple"}
execute @a[score_playerQuit_min=1] ~ ~ ~ /title @a[c=1] subtitle {"text":"Ready to Parkour?","color":"blue"}
execute @a[score_playerQuit_min=1] ~ ~ ~ /tellraw @a ["",{"selector":"@a[score_playerQuit_min=1]","bold":true,"color":"light_purple"},{"text":" "},{"text":"has joined the server!","color":"aqua"}]
scoreboard players set @a[score_playerQuit_min=1] playerQuit 0


## GIVE PLAYERS UNIQUE ID
execute @a[score_id=0,c=1] ~ ~ ~ /scoreboard players add #maxid id 1
execute @a[score_id=0,c=1] ~ ~ ~ /scoreboard players operation @a[c=1,r=0] id = #maxid id