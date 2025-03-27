scoreboard players set Temp reg_1 1
execute on vehicle run scoreboard players set Temp reg_1 0
execute if score Temp reg_1 matches 1 at @s run tp @s ~ ~-1000 ~