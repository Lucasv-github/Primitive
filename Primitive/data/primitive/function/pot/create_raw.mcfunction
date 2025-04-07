execute at @s run setblock ~ ~ ~ minecraft:decorated_pot
execute at @s run kill @e[limit=1,sort=nearest,type=minecraft:interaction,tag=clay_blob_interaction,distance=..1]
execute at @s run kill @e[limit=1,sort=nearest,type=minecraft:armor_stand,tag=break_counter,distance=..1]
execute at @s align xyz positioned ~0.5 ~ ~0.5 unless entity @e[limit=1,sort=nearest,type=minecraft:armor_stand,tag=break_counter,distance=..0.5] run summon minecraft:armor_stand ~ ~ ~ {Tags:["raw_pot","rain_sensitive","pot"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:0b}
execute at @s run scoreboard players set @e[limit=1,sort=nearest,type=minecraft:armor_stand,tag=raw_pot] pot_cure_counter 1800
