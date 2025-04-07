execute at @s if score @e[limit=1,sort=nearest,type=minecraft:armor_stand,tag=break_counter] break_counter matches 60 run function primitive:pot/create_raw
data remove entity @s attack