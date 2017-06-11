# ----------------------------------------------------------------------
# COURSE EFFECTS
# Effects values durration - amplifier
# ----------------------------------------------------------------------

## JUMP BOOST
execute @e[name=jumpBoost] ~ ~ ~ effect @a[type=player,r=1] minecraft:jump_boost 1 4

## SPEED BOOST
execute @e[name=speedBoost] ~ ~ ~ effect @a[type=player,r=1] minecraft:speed 1 4

## BLINDNESS
execute @e[name=blindness] ~ ~ ~ effect @a[type=player,r=1] minecraft:blindness 3 1

## SLOWNESS
execute @e[name=slowness] ~ ~ ~ effect @a[type=player,r=1] minecraft:slowness 3 1
