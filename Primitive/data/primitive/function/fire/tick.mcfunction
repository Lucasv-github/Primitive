scoreboard players remove @s fire_time 1
scoreboard players add @s total_fire_time 1

data merge entity @s {Fire:1000s}

execute at @s run function primitive:fire/add_fuel

#Other items (on top of fire)
execute at @s as @e[type=minecraft:item,distance=..1,tag=!fire_dropped] run function primitive:fire/thrown_into

#Cooking items
#Stack size changed?
execute at @s as @e[type=item,distance=..1.5,tag=!cooked] store result score @s cook_item_count_new run data get entity @s Item.count
execute at @s as @e[type=item,distance=..1.5,tag=!cooked] if score @s cook_time_done matches -2147483647.. unless score @s cook_item_count_new = @s cook_item_count run function primitive:fire/set_item_cook_time

#Detect new items
execute at @s as @e[type=item,distance=..1.5,tag=!cooked] unless score @s cook_time_done matches -2147483647.. run function primitive:fire/set_item_cook_time

execute at @s run scoreboard players add @e[type=item,distance=..1.5] cook_time 1
execute at @s as @e[type=item,distance=..1.5,tag=!cooked] if score @s cook_time = @s cook_time_done run function primitive:fire/cooked

#Coalesce
scoreboard players set Temp reg_1 0
execute at @s as @e[type=item,distance=..1.5] if items entity @s contents minecraft:iron_nugget[minecraft:custom_data={copper_nugget:1}] run scoreboard players add Temp reg_1 1
execute if score Temp reg_1 matches 9.. run function primitive:fire/coalesce

#Heating pots
execute at @s run tag @e[type=minecraft:armor_stand,tag=fired_pot,distance=..2] add heated

execute if score @s fire_time matches ..0 run function primitive:fire/burned_out

function primitive:fire/set_blocks

