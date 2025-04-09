scoreboard players add @s fire_counter 10

execute if score @s fire_counter matches 250.. at @s anchored eyes positioned ^ ^ ^1.65 run particle minecraft:smoke

execute if score @s fire_counter matches 500.. at @s as @e[type=minecraft:item,limit=1,distance=..5,nbt={Item:{id:"minecraft:stick",components:{"minecraft:custom_data":{bark:3}}}}] run function primitive:fire/create
execute if score @s fire_counter matches 500.. run scoreboard players set @s fire_counter 0