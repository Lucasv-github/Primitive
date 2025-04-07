#This handles when someone breaks it, not to be called to break the pot

execute at @s if entity @e[limit=1,sort=nearest,type=minecraft:armor_stand,tag=raw_pot,distance=..1] run function primitive:pot/raw_broken
execute at @s if entity @e[limit=1,sort=nearest,type=minecraft:armor_stand,tag=cured_pot,distance=..1] run function primitive:pot/cured_broken
execute at @s if entity @e[limit=1,sort=nearest,type=minecraft:armor_stand,tag=fired_pot,distance=..1] run function primitive:pot/fired_broken