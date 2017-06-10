# ----------------------------------------------------------------------
# INITIALIZE PARKOUR
# Set up gamerules and scoreboards
# Apply buffs
# ----------------------------------------------------------------------

## PARKOUR SYSTEM INIT
gamerule keepInventory true
tellraw @a ["",{"text":"Set gamerule keepInventory to ","color":"gray"},{"text":"true","color":"green"}]

gamerule commandBlockOutput false
tellraw @a ["",{"text":"Set gamerule commandBlockOutput to ","color":"gray"},{"text":"false","color":"red"}]

gamerule logAdminCommands false
tellraw @a ["",{"text":"Set gamerule logAdminCommands to ","color":"gray"},{"text":"false","color":"red"}]

gamerule doDaylightCycle false
tellraw @a ["",{"text":"Set gamerule doDaylightCycle to ","color":"gray"},{"text":"false","color":"red"}]

gamerule doTileDrops false
tellraw @a ["",{"text":"Set gamerule doTileDrops to ","color":"gray"},{"text":"false","color":"red"}]

gamerule doMobSpawning false
tellraw @a ["",{"text":"Set gamerule doMobSpawning to ","color":"gray"},{"text":"false","color":"red"}]

gamerule mobGriefing false
tellraw @a ["",{"text":"Set gamerule mobGriefing to ","color":"gray"},{"text":"false","color":"red"}]

gamerule showDeathMessages false
tellraw @a ["",{"text":"Set gamerule showDeathMessages to ","color":"gray"},{"text":"false","color":"red"}]

gamerule doWeatherCycle false
tellraw @a ["",{"text":"Set gamerule doWeatherCycle to ","color":"gray"},{"text":"false","color":"red"}]

time set 6000
tellraw @a ["",{"text":"Set time to ","color":"gray"},{"text":"6000","color":"yellow"}]

## INIT SCOREBOARDS
scoreboard objectives add id dummy Unique Player ID
scoreboard objectives add onGround dummy
scoreboard objectives add killTimer dummy
scoreboard objectives add tempCP dummy
scoreboard objectives add tempID dummy
scoreboard objectives add checkPoint dummy
scoreboard objectives add carrotStick stat.useItem.minecraft.carrot_on_a_stick
scoreboard objectives add respawns dummy Number of Respawns
scoreboard objectives setdisplay sidebar respawns
scoreboard players set respawns 0
scoreboard objectives add playerQuit stat.leaveGame
scoreboard objectives add parkourMaster dummy

## START GAME LOOP
gamerule gameLoopFunction byop:loop

# GIVE PLAYERS SPAWN EGGS
function byop:markers_give

## TELL PLAYERS BOYP WAS INSTALLED
tellraw @a ["",{"text":"Build Your Own Parkour","bold":true,"color":"green"},{"text":" ","color":"light_purple"},{"text":"has been installed!","bold":true,"color":"gold"},{"text":"\n"},{"text":"Function by:","color":"gray"},{"text":" "},{"text":"hogbits","color":"light_purple"},{"text":"\n"},{"text":"## -------------------//-------------------##","color":"dark_gray"},{"text":"\n"},{"text":"Construct your course from any material you wish. Player must fall onto a ","color":"yellow"},{"text":"barrier block","underlined":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/give @p minecraft:barrier"}},{"text":" to be considered out.","color":"yellow"},{"text":"\n"},{"text":"## -------------------//-------------------##","color":"dark_gray"},{"text":"\n"},{"text":"Use the appropriate ","color":"yellow"},{"text":"spawn eggs","underlined":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/function byop:markers_give"}},{"text":" to define the course start and end","color":"yellow"}]