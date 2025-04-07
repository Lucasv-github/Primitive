execute at @s run setblock ~ ~ ~ minecraft:decorated_pot
execute at @s align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Tags:["fired_pot","pot","rain_sensitive_minute"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b}
execute at @s run scoreboard players set @e[limit=1,sort=nearest,tag=fired_pot] pot_water_amount 0

execute at @s as @e[limit=1,sort=nearest,type=armor_stand,tag=fired_pot] if block ~ ~1 ~ minecraft:water run function primitive:pot/placed_in_water

kill @s