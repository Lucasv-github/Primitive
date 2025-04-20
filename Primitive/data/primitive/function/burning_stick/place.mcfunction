execute at @s run setblock ~ ~ ~ minecraft:torch keep

scoreboard players set @s fire_time 60

tag @s add burning_stick
tag @s remove placed_burning_stick