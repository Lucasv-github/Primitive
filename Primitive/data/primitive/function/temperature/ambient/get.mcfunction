execute store result score Temp reg_2 run time query daytime

#Morning: 1000..6000
execute if score Temp reg_2 matches 1000..6000 run scoreboard players set Temp reg_1 15

#Evening: 6000..13000
execute if score Temp reg_2 matches 6000..13000 run scoreboard players set Temp reg_1 25

#Late evening 13000..18000
execute if score Temp reg_2 matches 13000..18000 run scoreboard players set Temp reg_1 15

#Early morning 18000...25000
execute if score Temp reg_2 matches 18000..25000 run scoreboard players set Temp reg_1 10

scoreboard players operation Temp reg_1 *= 1000 reg_1