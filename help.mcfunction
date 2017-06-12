# ----------------------------------------------------------------------
# HELP TEXT
# Hope players do not need to much explanation
# ----------------------------------------------------------------------

tellraw @a ["",{"text":"If you find yourself stuck falling continiously, right click with the ","color":"yellow"},{"text":"carrot on a stick","underlined":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/give @p minecraft:carrot_on_a_stick 1 0 {Unbreakable:1,display:{Name:\"Unstick\",Lore:[\"Right click to reset if stuck\"]}}"}},{"text":" to reset your player to the start of the course.","color":"yellow"}]
