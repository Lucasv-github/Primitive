function primitive:temperature/get

scoreboard players operation Temp reg_2 = @s temperature
scoreboard players operation Temp reg_2 -= Temp reg_1

scoreboard players operation Temp reg_2 /= 100 reg_1

scoreboard players operation @s temperature -= Temp reg_2

