#This handles when someone breaks it, not to be called to break the pot

execute at @s if entity @e[limit=1,sort=nearest,type=minecraft:armor_stand,tag=raw_brick,distance=..1] run function primitive:brick/raw_broken
execute at @s if entity @e[limit=1,sort=nearest,type=minecraft:armor_stand,tag=cured_brick,distance=..1] run function primitive:brick/cured_broken