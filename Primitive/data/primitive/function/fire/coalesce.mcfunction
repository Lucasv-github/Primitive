scoreboard players operation Temp reg_2 = Temp reg_1
scoreboard players operation Temp reg_2 /= 9 reg_1
execute store result storage primitive:coalesce_drops ingots int 1 run scoreboard players get Temp reg_2

scoreboard players operation Temp reg_2 = Temp reg_1
scoreboard players operation Temp reg_2 %= 9 reg_1
execute store result storage primitive:coalesce_drops nuggets int 1 run scoreboard players get Temp reg_2

execute at @s run function primitive:fire/coalesce_drops with storage primitive:coalesce_drops

data remove storage primitive:coalesce_drops ingots
data remove storage primitive:coalesce_drops nuggets

execute at @s run kill @e[type=item,distance=..1.5,nbt={Item:{id:"minecraft:iron_nugget",components:{"minecraft:custom_data":{copper_nugget:1}}}}]