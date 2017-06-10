# ----------------------------------------------------------------------
# RESET MARKERS
# Clears course start and end markers
# ----------------------------------------------------------------------

function byop:markers_kill

tellraw @a ["",{"text":"Map has been reset. "},{"text":"Get Markers","color":"aqua","clickEvent":{"action":"run_command","value":"/function byop:markers"}}]