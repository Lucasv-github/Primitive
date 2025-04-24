scoreboard players set @s fire_counter 0

scoreboard players set Temp reg_1 20

execute if predicate primitive:is_sneaking run scoreboard players set Temp reg_1 10
execute if predicate primitive:is_running run scoreboard players set Temp reg_1 30

scoreboard players operation @s player_activity += Temp reg_1