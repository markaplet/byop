# ----------------------------------------------------------------------
# PARKOUR MASTER
# Congradulate player on completing course with with no respawns
# ----------------------------------------------------------------------

execute @e[type=armor_stand,name=courseEnd] ~ ~ ~ /scoreboard players set @a[c=1,r=2,score_parkourMaster=1,score_parkourMaster_min=1] parkourMaster 2
execute @a[score_parkourMaster=2,score_parkourMaster_min=2] ~ ~ ~ /title @a[score_parkourMaster=2,score_parkourMaster_min=2] title {"text":"PARKOUR MASTER","bold":true,"color":"gold"}

# FIREWORKS DISPLAY FOR PARKOUR MASTER
execute @a[score_parkourMaster=2,score_parkourMaster_min=2] ~ ~ ~ summon fireworks_rocket ~ ~1 ~ {FireworksItem:{id:fireworks,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1,Colors:[I;15562239,16449400],FadeColors:[I;7274288,7273215]}]}}}}
execute @a[score_parkourMaster=2,score_parkourMaster_min=2] ~ ~ ~ summon fireworks_rocket ~1 ~2 ~ {FireworksItem:{id:fireworks,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[I;10551185,11794431],FadeColors:[I;16748532]}]}}}}
execute @a[score_parkourMaster=2,score_parkourMaster_min=2] ~ ~ ~ summon fireworks_rocket ~ ~3 ~3 {FireworksItem:{id:fireworks,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Flicker:1,Trail:1,Colors:[I;2097144,8060870],FadeColors:[I;15597434,16759938]}]}}}}
execute @a[score_parkourMaster=2,score_parkourMaster_min=2] ~ ~ ~ summon fireworks_rocket ~5 ~5 ~2 {FireworksItem:{id:fireworks,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Flicker:1,Trail:1,Colors:[I;16751641,13997823,16760253],FadeColors:[I;15597434,15167231,16734586]},{Type:1,Trail:1,Colors:[I;7802879,16711859,4382975],FadeColors:[I;4350719,16754940,13103871]},{Type:3,Flicker:1,Colors:[I;217343],FadeColors:[I;16711680]}]}}}}
execute @a[score_parkourMaster=2,score_parkourMaster_min=2] ~ ~ ~ summon fireworks_rocket ~2 ~4 ~2 {FireworksItem:{id:fireworks,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1,Colors:[I;5242709,16740008,16752501],FadeColors:[I;15859627]}]}}}}
execute @a[score_parkourMaster=2,score_parkourMaster_min=2] ~ ~ ~ summon fireworks_rocket ~ ~7 ~ {FireworksItem:{id:fireworks,Count:1,tag:{Fireworks:{Explosions:[{Type:3,Colors:[I;3386112],FadeColors:[I;12255178]}]}}}}

## Prevent player for constantly invoking fireworks
execute @a[score_parkourMaster=2,score_parkourMaster_min=2] ~ ~ ~ /scoreboard players set @a parkourMaster 3