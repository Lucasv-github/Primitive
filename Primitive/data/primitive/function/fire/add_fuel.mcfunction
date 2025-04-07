#Get burn time + number of items
execute at @s as @e[type=minecraft:item,limit=1,distance=..1] store result score @s fire_time run data get entity @s Item.components.minecraft:custom_data.burn_time
execute at @s as @e[type=minecraft:item,limit=1,distance=..1] store result score @s item_count run data get entity @s Item.count

#Multiply burn time times number of items
execute at @s as @e[type=minecraft:item,limit=1,distance=..1,scores={fire_time=1..}] run scoreboard players operation @s fire_time *= @s item_count

#Add to fire
execute at @s as @e[type=minecraft:item,limit=1,distance=..1,scores={fire_time=1..}] run scoreboard players operation @e[type=minecraft:armor_stand,limit=1,sort=nearest,distance=..1] fire_time += @s fire_time
execute at @s as @e[type=minecraft:item,limit=1,distance=..1,scores={fire_time=1..}] run kill @s