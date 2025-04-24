#execute at @s run setblock ~ ~ ~ minecraft:fire
execute at @s align xyz run summon minecraft:armor_stand ~0.5 ~ ~0.5 {Invulnerable:1b,Tags:["created_fire","rain_sensitive","temperature_source"],Invisible:1b,Fire:1000s}

execute at @s run scoreboard players set @e[limit=1,sort=nearest,type=minecraft:armor_stand,tag=created_fire] temperature 300000

execute at @s as @e[type=minecraft:item,limit=1,distance=..5,nbt={Item:{id:"minecraft:stick",components:{"minecraft:custom_data":{bark:3}}}}] store result score @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=created_fire] fire_time run data get entity @s Item.count
execute at @s run kill @e[type=minecraft:item,limit=1,distance=..5,nbt={Item:{id:"minecraft:stick",components:{"minecraft:custom_data":{bark:3}}}}]