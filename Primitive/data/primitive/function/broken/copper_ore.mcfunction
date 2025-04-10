execute at @s run setblock ~ ~ ~ minecraft:copper_ore
execute at @s run summon item ~ ~ ~ {Item:{id:raw_copper,count:1}}
execute at @s run summon item ~ ~ ~ {Item:{id:gray_dye,count:1,components:{item_model:"primitive_pack:gravel_piece",custom_data:{gravel:1},custom_name:{"text":"Gravel","italic":false}}}}
execute at @s align xyz positioned ~0.5 ~ ~0.5 unless entity @e[limit=1,sort=nearest,type=minecraft:armor_stand,tag=break_counter,distance=..0.5] run summon minecraft:armor_stand ~ ~ ~ {Tags:["break_counter"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b}
execute at @s run scoreboard players add @e[limit=1,sort=nearest,type=minecraft:armor_stand,tag=break_counter] break_counter 1
execute at @s as @e[limit=1,sort=nearest,type=minecraft:armor_stand,tag=break_counter] if score @s break_counter matches 64.. run function primitive:long_break_broken
kill @s