execute at @s unless entity @e[distance=..5,tag=temperature_source] run function primitive:temperature/ambient/get

#TODO take both into account

execute at @s as @e[distance=..5,tag=temperature_source] run scoreboard players operation Temp reg_1 = @s temperature