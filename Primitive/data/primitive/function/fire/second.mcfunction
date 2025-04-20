scoreboard players remove @s fire_time 1
scoreboard players add @s total_fire_time 1

data merge entity @s {Fire:1000s}

#TODO with these here we should be able to drop the nopickup fire tag
function primitive:fire/add_fuel

#Other items (on top of fire)
execute at @s as @e[type=minecraft:item,distance=..1,tag=!fire_dropped] run function primitive:fire/thrown_into

#Cooking items
execute at @s run scoreboard players add @e[type=item,distance=..1.5] cook_time 1
execute at @s as @e[type=item,distance=..1.5,scores={cook_time=20..},tag=!cooked] run function primitive:fire/cooked

#Coalesce
scoreboard players set Temp reg_1 0
execute at @s as @e[type=item,distance=..1.5,nbt={Item:{id:"minecraft:iron_nugget",components:{"minecraft:custom_data":{copper_nugget:1}}}}] run scoreboard players add Temp reg_1 1
execute if score Temp reg_1 matches 9.. run function primitive:fire/coalesce

#Heating pots
execute at @s run tag @e[type=minecraft:armor_stand,tag=fired_pot,distance=..2] add heated

execute if score @s fire_time matches ..0 at @s run setblock ~ ~ ~ minecraft:air
execute if score @s fire_time matches ..0 run scoreboard players operation @s total_fire_time /= 1600 reg_1
execute if score @s fire_time matches ..0 store result storage primitive:fire_drops coal int 1 run scoreboard players get @s total_fire_time
execute if score @s fire_time matches ..0 at @s run function primitive:fire/drops with storage primitive:fire_drops
execute if score @s fire_time matches ..0 at @s run data remove storage primitive:fire_drops coal
execute if score @s fire_time matches ..0 at @s run tag @e[distance=..2] remove heated
execute if score @s fire_time matches ..0 at @s as @e[type=item,distance=..1.5] run data merge entity @s {NoGravity:1b}
execute if score @s fire_time matches ..0 run kill @s

execute if score @s fire_time matches 1000.. at @s run setblock ~ ~ ~ minecraft:fire keep

execute if score @s fire_time matches 10000.. at @s run setblock ~1 ~ ~ minecraft:fire keep
execute if score @s fire_time matches 10000.. at @s run setblock ~-1 ~ ~ minecraft:fire keep
execute if score @s fire_time matches 10000.. at @s run setblock ~ ~ ~1 minecraft:fire keep
execute if score @s fire_time matches 10000.. at @s run setblock ~ ~ ~-1 minecraft:fire keep