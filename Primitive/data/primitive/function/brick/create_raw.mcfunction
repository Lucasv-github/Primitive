execute at @s run setblock ~ ~ ~ minecraft:player_head{profile:{id:[I;-1665967119,-1351399641,-1874897321,-1240177571],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODE4ZTA1NDJiZDFjMzI3ZTNlMmQ2OTQwM2E5ZjQ3OTdjMTU5MzFlNTg1ZmM1YWMzNDg4ZmQ2MTY5ZThmYTdlYyJ9fX0="}]}}
execute at @s align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Tags:["raw_brick","rain_sensitive","brick","clay_feature"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b}
execute at @s run scoreboard players set @e[limit=1,sort=nearest,type=minecraft:armor_stand,tag=raw_brick] clay_cure_counter 4000
