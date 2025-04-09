scoreboard players set Temp reg_1 20000

scoreboard players set Temp reg_2 1

scoreboard players set Temp reg_3 0
execute at @s if biome ~ ~ ~ #primitive:salty_water run scoreboard players set Temp reg_3 1

function primitive:pot/add_water