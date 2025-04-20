#TODO some contents might require something special

summon item ~ ~ ~ {Tags:["pot_broken"],Item:{id:bat_spawn_egg,count:1,components:{entity_data:{id:armor_stand,ShowArms:1b,Invisible:1b,Marker:1b,Invulnerable:1b,Silent:1b,Tags:[placed_fired_pot]},item_model:"minecraft:decorated_pot",item_model:"minecraft:decorated_pot",custom_name:["",{"text":"Fired pot","italic":false}],custom_data:{fired_pot:1}}}}

execute at @s if entity @e[limit=1,sort=nearest,type=minecraft:armor_stand,tag=fired_pot,distance=..1,tag=boiled_water] run data modify entity @e[limit=1,sort=nearest,type=minecraft:item,tag=pot_broken] Item.components.minecraft:custom_data merge value {boiled_water:1}
execute at @s if entity @e[limit=1,sort=nearest,type=minecraft:armor_stand,tag=fired_pot,distance=..1,tag=raw_water] run data modify entity @e[limit=1,sort=nearest,type=minecraft:item,tag=pot_broken] Item.components.minecraft:custom_data merge value {raw_water:1}
execute at @s if entity @e[limit=1,sort=nearest,type=minecraft:armor_stand,tag=fired_pot,distance=..1,tag=salt_water] run data modify entity @e[limit=1,sort=nearest,type=minecraft:item,tag=pot_broken] Item.components.minecraft:custom_data merge value {salt_water:1}

#Reset if getting from player fails
data remove storage primitive:pot_drops salt

execute as @e[limit=1,sort=nearest,type=minecraft:armor_stand,tag=fired_pot,distance=..1,tag=boiled_dry] store result storage primitive:pot_drops salt int 1 run scoreboard players get @s pot_salt_amount
execute at @s run function primitive:pot/drops with storage primitive:pot_drops


#Want to store remaining contentents unless boiled dry
execute at @s unless entity @e[limit=1,sort=nearest,type=minecraft:armor_stand,tag=fired_pot,distance=..1,tag=boiled_dry] store result entity @e[limit=1,sort=nearest,type=minecraft:item,tag=pot_broken] Item.components.minecraft:custom_data.pot_water_amount int 1 run scoreboard players get @e[limit=1,sort=nearest,type=minecraft:armor_stand,tag=fired_pot] pot_water_amount

execute at @s unless entity @e[limit=1,sort=nearest,type=minecraft:armor_stand,tag=fired_pot,distance=..1,tag=boiled_dry] store result entity @e[limit=1,sort=nearest,type=minecraft:item,tag=pot_broken] Item.components.minecraft:custom_data.pot_salt_amount int 1 run scoreboard players get @e[limit=1,sort=nearest,type=minecraft:armor_stand,tag=fired_pot] pot_salt_amount


execute at @s run kill @e[limit=1,sort=nearest,type=minecraft:armor_stand,tag=fired_pot,distance=..1]
kill @s

