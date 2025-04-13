execute at @s if score @e[limit=1,sort=nearest,type=minecraft:armor_stand,tag=break_counter] break_counter matches 60 run scoreboard players add @s clay_form_counter 1


execute if score @s clay_form_counter matches 20 run function primitive:brick/create_raw
execute if score @s clay_form_counter matches 21 run function primitive:clay/reblob

execute if score @s clay_form_counter matches 40 run function primitive:pot/create_raw
execute if score @s clay_form_counter matches 41 run function primitive:clay/reblob
execute if score @s clay_form_counter matches 41 run scoreboard players set @s clay_form_counter 0

data remove entity @s attack