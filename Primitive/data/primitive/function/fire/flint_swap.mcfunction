tag @s add flint_offhand

execute at @s run playsound minecraft:item.flintandsteel.use

execute store result score Temp reg_1 run random value 1..100

execute if score Temp reg_1 matches 1..10 at @s anchored eyes positioned ^ ^ ^1.65 run particle minecraft:flame

execute if score Temp reg_1 matches 50 at @s as @e[type=minecraft:item,limit=1,distance=..5,nbt={Item:{id:"minecraft:stick",components:{"minecraft:custom_data":{bark:3}}}}] run function primitive:fire/create