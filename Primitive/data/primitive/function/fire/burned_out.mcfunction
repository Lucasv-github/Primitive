execute at @s run setblock ~ ~ ~ minecraft:air
scoreboard players operation @s total_fire_time /= 1600 reg_1
execute store result storage primitive:fire_drops coal int 1 run scoreboard players get @s total_fire_time
execute at @s run function primitive:fire/drops with storage primitive:fire_drops
execute at @s run data remove storage primitive:fire_drops coal
execute at @s run tag @e[distance=..2] remove heated
execute at @s as @e[type=item,distance=..1.5] run data merge entity @s {NoGravity:1b}
kill @s