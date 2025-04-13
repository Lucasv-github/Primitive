#Pot specific
execute as @s[tag=raw_pot] at @s run kill @e[limit=1,sort=nearest,type=minecraft:item_display,tag=raw_pot_display,distance=..1]
execute as @s[tag=raw_pot] at @s run kill @e[limit=1,sort=nearest,type=minecraft:armor_stand,tag=raw_pot,distance=..1]

execute as @s[tag=cured_pot] at @s run kill @e[limit=1,sort=nearest,type=minecraft:armor_stand,tag=cured_pot,distance=..1]


#Brick specific
execute as @s[tag=raw_brick] at @s run kill @e[limit=1,sort=nearest,type=minecraft:armor_stand,tag=raw_brick,distance=..1]

execute as @s[tag=cured_brick] at @s run kill @e[limit=1,sort=nearest,type=minecraft:armor_stand,tag=cured_brick,distance=..1]