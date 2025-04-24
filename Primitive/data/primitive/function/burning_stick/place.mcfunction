execute at @s run setblock ~ ~ ~ minecraft:torch keep

scoreboard players set @s fire_time 600
scoreboard players set @s temperature 300000

tag @s add temperature_source
tag @s add burning_stick
tag @s remove placed_burning_stick