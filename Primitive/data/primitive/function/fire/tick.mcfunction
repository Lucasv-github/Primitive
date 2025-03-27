scoreboard players remove @s fire_time 1
scoreboard players add @s total_fire_time 1

data merge entity @s {Fire:1000s}

execute if score @s fire_time matches ..0 at @s run setblock ~ ~ ~ minecraft:air
execute if score @s fire_time matches ..0 run scoreboard players operation @s total_fire_time /= 1600 reg_1
execute if score @s fire_time matches ..0 store result storage primitive:fire_drops coal int 1 run scoreboard players get @s total_fire_time
execute if score @s fire_time matches ..0 at @s run function primitive:fire/drops with storage primitive:fire_drops
execute if score @s fire_time matches ..0 run kill @s

execute if score @s fire_time matches 1000.. at @s run setblock ~ ~ ~ minecraft:fire keep

execute if score @s fire_time matches 10000.. at @s run setblock ~1 ~ ~ minecraft:fire keep
execute if score @s fire_time matches 10000.. at @s run setblock ~-1 ~ ~ minecraft:fire keep
execute if score @s fire_time matches 10000.. at @s run setblock ~ ~ ~1 minecraft:fire keep
execute if score @s fire_time matches 10000.. at @s run setblock ~ ~ ~-1 minecraft:fire keep

#Get burn time + number of items
execute at @s as @e[type=minecraft:item,limit=1,distance=..1] store result score @s fire_time run data get entity @s Item.components.minecraft:custom_data.burn_time
execute at @s as @e[type=minecraft:item,limit=1,distance=..1] store result score @s item_count run data get entity @s Item.count

#Multiply burn time times number of items
execute at @s as @e[type=minecraft:item,limit=1,distance=..1,scores={fire_time=1..}] run scoreboard players operation @s fire_time *= @s item_count

#Add to fire
execute at @s as @e[type=minecraft:item,limit=1,distance=..1,scores={fire_time=1..},tag=!fire_dropped] run scoreboard players operation @e[type=minecraft:armor_stand,limit=1,sort=nearest,distance=..1] fire_time += @s fire_time
execute at @s as @e[type=minecraft:item,limit=1,distance=..1,scores={fire_time=1..},tag=!fire_dropped] run kill @s

#Other items (on top of fire)
execute at @s as @e[type=minecraft:item,distance=..1,tag=!fire_dropped] run function primitive:fire/thrown_into