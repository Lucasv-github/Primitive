execute at @s run setblock ~ ~ ~ minecraft:decorated_pot
execute at @s run summon minecraft:item_display ~ ~0.5 ~ {Tags:["raw_pot_display"],item:{id:stone,components:{item_model:"primitive_pack:clay_pot"}},transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],scale:[1.01f,1.01f,1.01f],right_rotation:[0f,0f,0f,1f]}}
execute at @s align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Tags:["raw_pot","rain_sensitive","pot","clay_feature"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b}
execute at @s run scoreboard players set @e[limit=1,sort=nearest,type=minecraft:armor_stand,tag=raw_pot] clay_cure_counter 1800
