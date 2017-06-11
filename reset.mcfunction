# ----------------------------------------------------------------------
# RESET MARKERS
# Clears course start and end markers
# ----------------------------------------------------------------------

function byop:markers_kill

tellraw @a[tag=Admin] ["",{"text":"Map markers have been removed. "},{"text":"Need Markers?","underlined":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/function byop:markers_give"}}]
