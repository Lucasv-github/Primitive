scoreboard players operation Temp reg_1 = Temp second_counter
scoreboard players operation Temp reg_1 %= 5 reg_1
execute if score Temp reg_1 matches 0 run function primitive:events/five_sec

scoreboard players operation Temp reg_1 = Temp second_counter
scoreboard players operation Temp reg_1 %= 60 reg_1
execute if score Temp reg_1 matches 0 run function primitive:events/minute

scoreboard players add Temp second_counter 1
scoreboard players set @s tick_counter 0