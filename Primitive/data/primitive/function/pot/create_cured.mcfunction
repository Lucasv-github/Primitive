execute at @s run kill @e[limit=1,sort=nearest,type=minecraft:item_display,tag=raw_pot_display,distance=..1]
tag @s remove raw_pot
tag @s add cured_pot