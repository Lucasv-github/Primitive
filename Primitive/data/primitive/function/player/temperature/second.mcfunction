scoreboard players operation Temp reg_1 = @s player_activity

scoreboard players operation Temp reg_1 *= 10 reg_1

#Limit temp by activity @ 37000
scoreboard players operation @s[scores={temperature=..39000}] temperature += Temp reg_1

#Bypass limit if low on water
scoreboard players operation Temp reg_2 = primitive_settings max_thirst
scoreboard players operation Temp reg_2 /= 10 reg_1

execute as @s if score @s thirst < Temp reg_2 run scoreboard players operation @s[scores={temperature=39000..}] temperature += Temp reg_1

function primitive:temperature/update_temperature

execute as @s[scores={temperature=37500..}] run function primitive:player/temperature/hot
execute as @s[scores={temperature=..36500}] run function primitive:player/temperature/cold

execute as @s[scores={temperature=40000..}] run function primitive:player/temperature/really_hot
execute as @s[scores={temperature=..30000}] run function primitive:player/temperature/really_cold