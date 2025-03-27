execute at @s align xyz positioned ~0.5 ~ ~0.5 unless entity @e[limit=1,sort=nearest,type=minecraft:armor_stand,tag=tree_root,distance=..0.5] run function primitive:tree/count
execute at @s run scoreboard players remove @e[limit=1,sort=nearest,type=minecraft:armor_stand,tag=tree_root,distance=..0.5] tree_count 1

execute at @s[nbt={Item:{id:"minecraft:stripped_oak_log"}}] run setblock ~ ~ ~ minecraft:stripped_oak_log
execute at @s[nbt={Item:{id:"minecraft:stripped_spruce_log"}}] run setblock ~ ~ ~ minecraft:stripped_spruce_log
execute at @s[nbt={Item:{id:"minecraft:stripped_birch_log"}}] run setblock ~ ~ ~ minecraft:stripped_birch_log
execute at @s[nbt={Item:{id:"minecraft:stripped_jungle_log"}}] run setblock ~ ~ ~ minecraft:stripped_jungle_log
execute at @s[nbt={Item:{id:"minecraft:stripped_acacia_log"}}] run setblock ~ ~ ~ minecraft:stripped_acacia_log
execute at @s[nbt={Item:{id:"minecraft:stripped_dark_oak_log"}}] run setblock ~ ~ ~ minecraft:stripped_dark_oak_log
execute at @s[nbt={Item:{id:"minecraft:stripped_mangrove_log"}}] run setblock ~ ~ ~ minecraft:stripped_mangrove_log
execute at @s[nbt={Item:{id:"minecraft:stripped_cherry_log"}}] run setblock ~ ~ ~ minecraft:stripped_cherry_log
execute at @s[nbt={Item:{id:"minecraft:stripped_pale_oak_log"}}] run setblock ~ ~ ~ minecraft:stripped_pale_oak_log

execute at @s as @e[limit=1,sort=nearest,type=minecraft:armor_stand,tag=tree_root,distance=..0.5] if score @s tree_count matches 0 at @s run function primitive:tree/destroy

kill @s