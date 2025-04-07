execute if score Temp reg_1 matches 1 run tag @s add raw_water
execute if score Temp reg_2 matches 1 run tag @s add salt_water

execute as @s[tag=salt_water] run scoreboard players add @s pot_salt_amount 1

execute unless score Temp reg_1 matches 1 unless score Temp reg_2 matches 1 run tag @s[tag=!raw_water,tag=!salt_water] add boiled_water

scoreboard players add @s pot_water_amount 1
scoreboard players add @s pot_cook_time 5