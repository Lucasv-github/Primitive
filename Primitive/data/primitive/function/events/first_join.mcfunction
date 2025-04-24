scoreboard players operation @s thirst = primitive_settings max_thirst
scoreboard players set @s temperature 37000

scoreboard players add @s player_id 0
scoreboard players add primitive_settings player_id 1
scoreboard players operation @s player_id = primitive_settings player_id

tag @s add joined_before