execute at @s as @e[type=minecraft:armor_stand,tag=clay_feature,limit=1,sort=nearest,distance=..1] run function primitive:clay/destroy_formed

execute at @s run setblock ~ ~ ~ minecraft:clay