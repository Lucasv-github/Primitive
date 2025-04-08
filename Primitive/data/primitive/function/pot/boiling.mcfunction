say boiling

scoreboard players operation @s reg_1 = @s pot_water_amount
scoreboard players operation @s reg_1 /= 20 reg_1
scoreboard players operation @s[tag=!boiled_water] pot_cook_time = @s reg_1

tag @s add boiling