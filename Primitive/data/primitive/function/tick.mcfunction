execute as @e[type=minecraft:item] run function primitive:item_handle
execute as @a run function primitive:player_handle

execute as @e[type=minecraft:armor_stand,tag=created_fire] run function primitive:fire/tick

execute as @e[type=minecraft:cow,tag=!modified_cow] run function primitive:modify/cow
execute as @e[type=minecraft:pig,tag=!modified_pig] run function primitive:modify/pig
execute as @e[type=minecraft:sheep,tag=!modified_sheep] run function primitive:modify/sheep

execute as @e[tag=mob_ai] run function primitive:mob_ai_handle

scoreboard players operation Temp reg_1 = Temp tick_counter
scoreboard players operation Temp reg_1 %= 20 reg_1
execute if score Temp reg_1 matches 0 run function primitive:events/second

scoreboard players add Temp tick_counter 1