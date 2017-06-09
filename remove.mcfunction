# ----------------------------------------------------------------------
# RESET ALL 
# Clears scoreboards, gamerules, course start and end markers
# ----------------------------------------------------------------------

## REMOVE SCOREBOARDS
scoreboard objectives remove id
scoreboard objectives remove onGround
scoreboard objectives remove killTimer
scoreboard objectives remove tempCP
scoreboard objectives remove tempID
scoreboard objectives remove checkPoint
scoreboard objectives remove carrotStick
scoreboard objectives remove respawns
scoreboard objectives setdisplay sidebar
scoreboard objectives remove playerQuit
scoreboard objectives remove parkourMaster

## RESET GAMERULES TO TYPICAL DEFAULTS
gamerule keepInventory false
gamerule commandBlockOutput true
gamerule logAdminCommands true
gamerule doDaylightCycle true
gamerule doTileDrops true
gamerule doMobSpawning true
gamerule mobGriefing true
gamerule showDeathMessages true
gamerule doWeatherCycle true

## REMOVE PLAYER BUFFS
effect @a clear

## REMOVE PLAYERS
scoreboard players reset *

## REMOVE MARKERS
kill @e[type=armor_stand,name=courseStart]
kill @e[type=armor_stand,name=courseEnd]

## START GAME LOOP
gamerule gameLoopFunction false

## TELL USER PARKOUR SYSTEM WAS REMOVED
tellraw @a ["",{"text":"## -------------------//-------------------##","color":"dark_gray"},{"text":"\n"},{"text":"Parkour System v1.3","bold":true,"color":"green"},{"text":" "},{"text":"has been removed","bold":true,"color":"gold"},{"text":"\nrun "},{"text":"/function byop:init","color":"aqua","clickEvent":{"action":"run_command","value":"/function byop:start"}},{"text":" to reinstall\n"},{"text":"## -------------------//-------------------##","color":"dark_gray"}]