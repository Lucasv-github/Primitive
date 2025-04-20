execute store result score @s reg_1 run data get entity @s Item.count

scoreboard players remove @s reg_1 10

execute if score @s reg_1 matches 0.. at @s run setblock ~ ~ ~ minecraft:bricks keep

#Prevent dropped stack from placing brick again
execute if score @s reg_1 matches 0.. at @s run tag @s add brick_blocked

execute if score @s reg_1 matches 0 run kill @s
execute if score @s reg_1 matches 1.. store result entity @s Item.count int 1 run scoreboard players get @s reg_1




