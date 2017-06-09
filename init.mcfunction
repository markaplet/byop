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


## Success Message
#tellraw @a ["",{"text":"===========================\n"},{"text":"   Parkour System Initialized!","color":"light_purple"},{"text":"\n"},{"text":"       v1.3 for mc 1.12","color":"gray"},{"text":"\n==========================="}]


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
gamerule gameLoopFunction parkour:loop

# GIVE PLAYERS SPAWN EGGS
function parkour:markers

#tellraw @a ["",{"text":"Parkour System v1.3","bold":true,"color":"green"},{"text":" ","bold":true},{"text":"has been installed!","bold":true,"color":"gold"},{"text":"\n"},{"text":"Command by:","color":"gray"},{"text":" "},{"text":"hogbits","color":"light_purple"},{"text":"\n"},{"text":"## -------------------//-------------------##","color":"dark_gray"},{"text":"\n"},{"text":"Construct your course from any material you wish. The only requirement is that a player must fall onto a ","color":"yellow"},{"text":"barrier block","underlined":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/give @p minecraft:barrier"}},{"text":" to be considered out.","color":"yellow"},{"text":"\n"},{"text":"## -------------------//-------------------##","color":"dark_gray"},{"text":"\n"},{"text":"The course beginning and end are set by placing down an invisible armor stand using the appropriate spawn eggs. Course_Start and Course_End respectively","color":"yellow"}]

tellraw @a ["",{"text":"Parkour System v1.3","bold":true,"color":"green"},{"text":" ","color":"light_purple"},{"text":"has been installed!","bold":true,"color":"gold"},{"text":"\n"},{"text":"Function by:","color":"gray"},{"text":" "},{"text":"hogbits","color":"light_purple"},{"text":"\n"},{"text":"## -------------------//-------------------##","color":"dark_gray"},{"text":"\n"},{"text":"Construct your course from any material you wish. Player must fall onto a ","color":"yellow"},{"text":"barrier block","underlined":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/give @p minecraft:barrier"}},{"text":" to be considered out.","color":"yellow"},{"text":"\n"},{"text":"## -------------------//-------------------##","color":"dark_gray"},{"text":"\n"},{"text":"Use the appropriate ","color":"yellow"},{"text":"spawn eggs","color":"aqua","clickEvent":{"action":"run_command","value":"/function parkour:markers"}},{"text":" to define the course start and end","color":"yellow"}]