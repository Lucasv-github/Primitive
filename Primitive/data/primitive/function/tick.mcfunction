execute as @e[type=minecraft:item] run function primitive:item_handle
execute as @a run function primitive:player_handle

execute as @a[nbt={Air:300s}] run function primitive:display_bar

execute as @e[type=minecraft:armor_stand,tag=created_fire] run function primitive:fire/tick

execute as @e[type=minecraft:cow,tag=!modified_cow] run function primitive:modify/cow
execute as @e[type=minecraft:pig,tag=!modified_pig] run function primitive:modify/pig
execute as @e[type=minecraft:sheep,tag=!modified_sheep] run function primitive:modify/sheep

execute as @e[type=minecraft:armor_stand,tag=placed_clay_blob] run function primitive:pot/create_blob
execute as @e[type=minecraft:armor_stand,tag=placed_fired_pot] run function primitive:pot/place

execute as @e[type=minecraft:interaction,tag=clay_blob_interaction] if data entity @s attack run function primitive:pot/clay_punch
execute as @e[type=minecraft:interaction,tag=shaping] at @s unless entity @a[distance=..1] run data merge entity @s {width:0.1,height:0.1,Tags:["clay_blob_interaction"]}

execute as @e[tag=rain_sensitive] at @s positioned ~ ~1 ~ if predicate primitive:rain_hits run function primitive:events/rained_on_tick

execute as @e[tag=mob_ai] run function primitive:mob_ai_handle

scoreboard players operation Temp reg_1 = Temp tick_counter
scoreboard players operation Temp reg_1 %= 20 reg_1
execute if score Temp reg_1 matches 0 run function primitive:events/second

scoreboard players add Temp tick_counter 1