#Logs
execute as @s[nbt={Item:{id:"minecraft:oak_log"}}] run function primitive:broken/logs/oak
execute as @s[nbt={Item:{id:"minecraft:spruce_log"}}] run function primitive:broken/logs/spruce
execute as @s[nbt={Item:{id:"minecraft:birch_log"}}] run function primitive:broken/logs/birch
execute as @s[nbt={Item:{id:"minecraft:jungle_log"}}] run function primitive:broken/logs/jungle
execute as @s[nbt={Item:{id:"minecraft:acacia_log"}}] run function primitive:broken/logs/acacia
execute as @s[nbt={Item:{id:"minecraft:dark_oak_log"}}] run function primitive:broken/logs/dark_oak
execute as @s[nbt={Item:{id:"minecraft:mangrove_log"}}] run function primitive:broken/logs/mangrove
execute as @s[nbt={Item:{id:"minecraft:cherry_log"}}] run function primitive:broken/logs/cherry
execute as @s[nbt={Item:{id:"minecraft:pale_oak_log"}}] run function primitive:broken/logs/pale_oak

#Stripped logs
execute as @s[nbt={Item:{id:"minecraft:stripped_oak_log"}}] run function primitive:tree/log_broken
execute as @s[nbt={Item:{id:"minecraft:stripped_spruce_log"}}] run function primitive:tree/log_broken
execute as @s[nbt={Item:{id:"minecraft:stripped_birch_log"}}] run function primitive:tree/log_broken
execute as @s[nbt={Item:{id:"minecraft:stripped_jungle_log"}}] run function primitive:tree/log_broken
execute as @s[nbt={Item:{id:"minecraft:stripped_acacia_log"}}] run function primitive:tree/log_broken
execute as @s[nbt={Item:{id:"minecraft:stripped_dark_oak_log"}}] run function primitive:tree/log_broken
execute as @s[nbt={Item:{id:"minecraft:stripped_mangrove_log"}}] run function primitive:tree/log_broken
execute as @s[nbt={Item:{id:"minecraft:stripped_cherry_log"}}] run function primitive:tree/log_broken
execute as @s[nbt={Item:{id:"minecraft:stripped_pale_oak_log"}}] run function primitive:tree/log_broken


#Leaves
execute as @s[nbt={Item:{id:"minecraft:oak_leaves"}}] unless data entity @s Item.components.minecraft:custom_data.processed run function primitive:broken/leaves/oak
execute as @s[nbt={Item:{id:"minecraft:spruce_leaves"}}] unless data entity @s Item.components.minecraft:custom_data.processed run function primitive:broken/leaves/spruce
execute as @s[nbt={Item:{id:"minecraft:birch_leaves"}}] unless data entity @s Item.components.minecraft:custom_data.processed run function primitive:broken/leaves/birch
execute as @s[nbt={Item:{id:"minecraft:jungle_leaves"}}] unless data entity @s Item.components.minecraft:custom_data.processed run function primitive:broken/leaves/jungle
execute as @s[nbt={Item:{id:"minecraft:acacia_leaves"}}] unless data entity @s Item.components.minecraft:custom_data.processed run function primitive:broken/leaves/acacia
execute as @s[nbt={Item:{id:"minecraft:dark_oak_leaves"}}] unless data entity @s Item.components.minecraft:custom_data.processed run function primitive:broken/leaves/dark_oak
execute as @s[nbt={Item:{id:"minecraft:mangrove_leaves"}}] unless data entity @s Item.components.minecraft:custom_data.processed run function primitive:broken/leaves/mangrove
execute as @s[nbt={Item:{id:"minecraft:cherry_leaves"}}] unless data entity @s Item.components.minecraft:custom_data.processed run function primitive:broken/leaves/cherry
execute as @s[nbt={Item:{id:"minecraft:pale_oak_leaves"}}] unless data entity @s Item.components.minecraft:custom_data.processed run function primitive:broken/leaves/pale_oak

#Cooking (TODO move to fire tick)
execute as @s[nbt={Item:{id:"minecraft:beef",count:1}}] at @s if entity @e[distance=..1.5,tag=created_fire] run scoreboard players add @s cook_time 1
execute as @s[nbt={Item:{id:"minecraft:porkchop",count:1}}] at @s if entity @e[distance=..1.5,tag=created_fire] run scoreboard players add @s cook_time 1
execute as @s[nbt={Item:{id:"minecraft:mutton",count:1}}] at @s if entity @e[distance=..1.5,tag=created_fire] run scoreboard players add @s cook_time 1
execute as @s[nbt={Item:{id:"minecraft:chicken",count:1}}] at @s if entity @e[distance=..1.5,tag=created_fire] run scoreboard players add @s cook_time 1
execute as @s[nbt={Item:{id:"minecraft:rabbit",count:1}}] at @s if entity @e[distance=..1.5,tag=created_fire] run scoreboard players add @s cook_time 1
execute as @s[nbt={Item:{id:"minecraft:salmon",count:1}}] at @s if entity @e[distance=..1.5,tag=created_fire] run scoreboard players add @s cook_time 1
execute as @s[nbt={Item:{id:"minecraft:cod",count:1}}] at @s if entity @e[distance=..1.5,tag=created_fire] run scoreboard players add @s cook_time 1
execute as @s[nbt={Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_data":{cured_pot:1}}}}] at @s if entity @e[distance=..1.5,tag=created_fire] run scoreboard players add @s cook_time 1

execute as @s[nbt={Item:{id:"minecraft:stick",count:1}}] at @s if entity @e[distance=..1.5,tag=created_fire] run scoreboard players add @s cook_time 1

execute as @s[scores={cook_time=400..}] run function primitive:fire/cooked


execute as @s[tag=!pot_broken,nbt={Item:{id:"minecraft:decorated_pot"}}] run function primitive:pot/broken

execute as @s[nbt={Item:{id:"minecraft:wheat_seeds"}}] run function primitive:modify/wheat_seeds
execute as @s[nbt={Item:{id:"minecraft:flint"}}] unless data entity @s Item.components.minecraft:custom_data.modified_flint run function primitive:modify/flint

execute as @e[nbt={Item:{id:"minecraft:clay_ball"}}] unless data entity @s Item.components.minecraft:custom_data.clay run function primitive:broken/clay
execute as @s[nbt={Item:{id:"minecraft:clay"}}] run function primitive:broken/clay

execute as @s[nbt={Item:{id:"minecraft:sand"}}] run function primitive:broken/sand
execute as @s[nbt={Item:{id:"minecraft:stone"}}] run function primitive:broken/stone
execute as @s[nbt={Item:{id:"minecraft:coal_ore"}}] run function primitive:broken/coal_ore
execute as @s[nbt={Item:{id:"minecraft:copper_ore"}}] run function primitive:broken/copper_ore
execute as @s[nbt={Item:{id:"minecraft:gravel"}}] run function primitive:broken/gravel
execute as @s[nbt={Item:{id:"minecraft:dirt"}}] run function primitive:broken/dirt
execute as @s[nbt={Item:{id:"minecraft:grass_block"}}] run function primitive:broken/grass_block

#Block place
execute as @s[nbt={Item:{id:"minecraft:brown_dye",count:64,components:{"minecraft:custom_data":{dirt:1}}}}] run function primitive:place/dirt
execute as @s[nbt={Item:{id:"minecraft:yellow_dye",count:64,components:{"minecraft:custom_data":{sand:1}}}}] run function primitive:place/sand
execute as @s[nbt={Item:{id:"minecraft:gray_dye",count:64,components:{"minecraft:custom_data":{gravel:1}}}}] run function primitive:place/gravel
execute as @s[nbt={Item:{id:"minecraft:clay_ball",count:64,components:{"minecraft:custom_data":{clay:1}}}}] run function primitive:place/clay

#Hot item start fire
execute as @s[nbt={Item:{components:{"minecraft:custom_data":{hot:1}}}}] at @s as @e[type=minecraft:item,distance=..1,nbt={Item:{components:{"minecraft:custom_data":{easy_burn:1}}}}] run function primitive:fire/relight
