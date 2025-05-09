execute at @s run setblock ~ ~ ~ minecraft:decorated_pot
execute at @s align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Tags:["fired_pot","pot","rain_sensitive_minute"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b}
execute at @s run scoreboard players set @e[limit=1,sort=nearest,tag=fired_pot] pot_water_amount 0

#Loading the data from the hand
#TODO will need better detection
execute at @s as @p run function primitive:held/get_data

execute at @s store result score @n[type=minecraft:armor_stand,tag=fired_pot,distance=..1] pot_water_amount run data get storage primitive:current_held_temp components.components.components.minecraft:custom_data.pot_water_amount
execute at @s store result score @n[type=minecraft:armor_stand,tag=fired_pot,distance=..1] pot_salt_amount run data get storage primitive:current_held_temp components.components.components.minecraft:custom_data.pot_salt_amount

execute at @s store result score Temp reg_1 run data get storage primitive:current_held_temp components.components.components.minecraft:custom_data.raw_water
execute at @s if score Temp reg_1 matches 1 run tag @n[type=minecraft:armor_stand,tag=fired_pot,distance=..1] add raw_water

execute at @s store result score Temp reg_1 run data get storage primitive:current_held_temp components.components.components.minecraft:custom_data.salt_water
execute at @s if score Temp reg_1 matches 1 run tag @n[type=minecraft:armor_stand,tag=fired_pot,distance=..1] add salt_water

#Cook time
execute at @s as @n[type=minecraft:armor_stand,tag=fired_pot,distance=..1] run scoreboard players operation @s reg_1 = @s pot_water_amount
execute at @s as @n[type=minecraft:armor_stand,tag=fired_pot,distance=..1] run scoreboard players operation @s reg_1 /= 100 reg_1
execute at @s as @n[type=minecraft:armor_stand,tag=fired_pot,distance=..1] run scoreboard players operation @s pot_cook_time = @s reg_1

execute at @s as @e[limit=1,sort=nearest,type=armor_stand,tag=fired_pot] if block ~ ~1 ~ minecraft:water run function primitive:pot/placed_in_water

kill @s