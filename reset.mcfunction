# ----------------------------------------------------------------------
# RESET MARKERS
# Clears course start and end markers
# ----------------------------------------------------------------------

kill @e[type=armor_stand]

tellraw @a ["",{"text":"Map has been reset. "},{"text":"Get Markers","color":"aqua","clickEvent":{"action":"run_command","value":"/function byop:markers"}}]