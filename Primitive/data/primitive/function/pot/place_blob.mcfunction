execute at @s run setblock ~ ~ ~ minecraft:clay
execute at @s run summon minecraft:interaction ~ ~ ~ {width:0.1,height:0.1,Tags:["clay_blob_interaction"]}
execute at @s align xyz positioned ~0.5 ~ ~0.5 unless entity @e[limit=1,sort=nearest,type=minecraft:armor_stand,tag=break_counter,distance=..0.5] run summon minecraft:armor_stand ~ ~ ~ {Tags:["break_counter","rain_sensitive"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b}
execute at @s run scoreboard players set @e[limit=1,sort=nearest,type=minecraft:armor_stand,tag=break_counter] break_counter 60

kill @s