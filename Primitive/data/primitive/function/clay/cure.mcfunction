execute at @s run kill @e[type=interaction,limit=1,sort=nearest,distance=..1,tag=clay_blob_interaction]
execute at @s run kill @e[limit=1,sort=nearest,type=minecraft:armor_stand,tag=break_counter,distance=..1]

execute as @s[tag=raw_pot] run function primitive:pot/create_cured
execute as @s[tag=raw_brick] run function primitive:brick/create_cured

scoreboard players reset @s clay_cure_counter