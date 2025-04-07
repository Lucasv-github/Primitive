scoreboard players add Temp tree_count 1
summon minecraft:armor_stand ~ ~ ~ {Tags:["tree_blocked"],NoGravity:1b}

execute positioned ~1 ~ ~ unless entity @e[limit=1,sort=nearest,type=minecraft:armor_stand,tag=tree_blocked,distance=..0.5] if block ~ ~ ~ #logs run function primitive:tree/count_iteration
execute positioned ~-1 ~ ~ unless entity @e[limit=1,sort=nearest,type=minecraft:armor_stand,tag=tree_blocked,distance=..0.5] if block ~ ~ ~ #logs run function primitive:tree/count_iteration
execute positioned ~ ~1 ~ unless entity @e[limit=1,sort=nearest,type=minecraft:armor_stand,tag=tree_blocked,distance=..0.5] if block ~ ~ ~ #logs run function primitive:tree/count_iteration
execute positioned ~ ~-1 ~ unless entity @e[limit=1,sort=nearest,type=minecraft:armor_stand,tag=tree_blocked,distance=..0.5] if block ~ ~ ~ #logs run function primitive:tree/count_iteration
execute positioned ~ ~ ~1 unless entity @e[limit=1,sort=nearest,type=minecraft:armor_stand,tag=tree_blocked,distance=..0.5] if block ~ ~ ~ #logs run function primitive:tree/count_iteration
execute positioned ~ ~ ~-1 unless entity @e[limit=1,sort=nearest,type=minecraft:armor_stand,tag=tree_blocked,distance=..0.5] if block ~ ~ ~ #logs run function primitive:tree/count_iteration
