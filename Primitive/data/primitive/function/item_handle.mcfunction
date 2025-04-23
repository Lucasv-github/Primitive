#Logs
execute if items entity @s contents minecraft:oak_log run function primitive:broken/logs/oak
execute if items entity @s contents minecraft:spruce_log run function primitive:broken/logs/spruce
execute if items entity @s contents minecraft:birch_log run function primitive:broken/logs/birch
execute if items entity @s contents minecraft:jungle_log run function primitive:broken/logs/jungle
execute if items entity @s contents minecraft:acacia_log run function primitive:broken/logs/acacia
execute if items entity @s contents minecraft:dark_oak_log run function primitive:broken/logs/dark_oak
execute if items entity @s contents minecraft:mangrove_log run function primitive:broken/logs/mangrove
execute if items entity @s contents minecraft:cherry_log run function primitive:broken/logs/cherry
execute if items entity @s contents minecraft:pale_oak_log run function primitive:broken/logs/pale_oak

#Stripped logs
execute if items entity @s contents #primitive:stripped_wood run function primitive:tree/log_broken

#Leaves
execute if items entity @s contents minecraft:oak_leaves unless data entity @s Item.components.minecraft:custom_data.processed run function primitive:broken/leaves/oak
execute if items entity @s contents minecraft:spruce_leaves unless data entity @s Item.components.minecraft:custom_data.processed run function primitive:broken/leaves/spruce
execute if items entity @s contents minecraft:birch_leaves unless data entity @s Item.components.minecraft:custom_data.processed run function primitive:broken/leaves/birch
execute if items entity @s contents minecraft:jungle_leaves unless data entity @s Item.components.minecraft:custom_data.processed run function primitive:broken/leaves/jungle
execute if items entity @s contents minecraft:acacia_leaves unless data entity @s Item.components.minecraft:custom_data.processed run function primitive:broken/leaves/acacia
execute if items entity @s contents minecraft:dark_oak_leaves unless data entity @s Item.components.minecraft:custom_data.processed run function primitive:broken/leaves/dark_oak
execute if items entity @s contents minecraft:mangrove_leaves unless data entity @s Item.components.minecraft:custom_data.processed run function primitive:broken/leaves/mangrove
execute if items entity @s contents minecraft:cherry_leaves unless data entity @s Item.components.minecraft:custom_data.processed run function primitive:broken/leaves/cherry
execute if items entity @s contents minecraft:pale_oak_leaves unless data entity @s Item.components.minecraft:custom_data.processed run function primitive:broken/leaves/pale_oak

execute if items entity @s[tag=!pot_broken] contents minecraft:decorated_pot run function primitive:pot/broken

execute if items entity @s contents minecraft:wheat_seeds run function primitive:modify/wheat_seeds
execute if items entity @s contents minecraft:flint unless data entity @s Item.components.minecraft:custom_data.modified_flint run function primitive:modify/flint

execute if items entity @s contents minecraft:clay_ball unless data entity @s Item.components.minecraft:custom_data.clay run function primitive:broken/clay
execute if items entity @s contents minecraft:clay run function primitive:broken/clay

execute if items entity @s contents minecraft:player_head run function primitive:brick/broken

execute if items entity @s contents minecraft:sand run function primitive:broken/sand
execute if items entity @s contents minecraft:stone run function primitive:broken/stone
execute if items entity @s contents minecraft:coal_ore run function primitive:broken/coal_ore
execute if items entity @s contents minecraft:copper_ore run function primitive:broken/copper_ore
execute if items entity @s contents minecraft:gravel run function primitive:broken/gravel
execute if items entity @s contents minecraft:dirt run function primitive:broken/dirt
execute if items entity @s contents minecraft:grass_block run function primitive:broken/grass_block

#Block place
execute if items entity @s contents minecraft:brown_dye[minecraft:count=64,minecraft:custom_data={dirt:1}] run function primitive:place/dirt
execute if items entity @s contents minecraft:yellow_dye[minecraft:count=64,minecraft:custom_data={sand:1}] run function primitive:place/sand
execute if items entity @s contents minecraft:gray_dye[minecraft:count=64,minecraft:custom_data={gravel:1}] run function primitive:place/gravel
execute if items entity @s contents minecraft:clay_ball[minecraft:count=64,minecraft:custom_data={clay:1}] run function primitive:place/clay
execute if items entity @s contents minecraft:brick[minecraft:custom_data={fired_brick:1}] run function primitive:place/bricks

#Hot item start fire
execute if items entity @s contents *[minecraft:custom_data~{hot:1}] at @s as @e[type=minecraft:item,distance=..1] if items entity @s contents *[minecraft:custom_data~{easy_burn:1}] run function primitive:fire/relight

#Animal carcasses modify
execute as @e if items entity @s contents *[minecraft:custom_data~{unmodified_carcass:1}] run function primitive:modify/carcass
