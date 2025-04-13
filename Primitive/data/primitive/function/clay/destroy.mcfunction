#To be run either as the break counter to destroy the blob or as the clay features to destroy those

execute at @s run setblock ~ ~ ~ air
execute at @s run kill @e[limit=1,sort=nearest,type=minecraft:interaction,tag=clay_blob_interaction,distance=..1]
execute at @s run summon item ~ ~ ~ {Item:{id:clay_ball,count:3,components:{custom_data:{clay:1},custom_name:{"text":"Clay","italic":false}}}}

execute at @s run kill @e[limit=1,sort=nearest,type=minecraft:armor_stand,tag=break_counter,distance=..1]

execute as @s[tag=!break_counter] run function primitive:clay/destroy_formed