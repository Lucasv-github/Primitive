execute unless block ~ ~ ~ #primitive:ray_continue run function primitive:look_checks
execute if block ~ ~ ~ minecraft:water run tag @s add looking_water
execute if block ~ ~ ~ #primitive:ray_continue positioned ^ ^ ^0.1 if entity @s[distance=..4.5] run function primitive:look_ray