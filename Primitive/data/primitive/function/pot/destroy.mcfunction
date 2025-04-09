execute as @s[tag=break_counter] at @s run setblock ~ ~ ~ air
execute as @s[tag=break_counter] at @s run kill @e[limit=1,sort=nearest,type=minecraft:interaction,tag=clay_blob_interaction,distance=..1]
execute as @s[tag=break_counter] at @s run kill @e[limit=1,sort=nearest,type=minecraft:armor_stand,tag=break_counter,distance=..1]
execute as @s[tag=break_counter] at @s run summon item ~ ~ ~ {Item:{id:clay_ball,count:3,components:{custom_data:{clay:1},custom_name:{"text":"Clay","italic":false}}}}

execute as @s[tag=raw_pot] at @s run setblock ~ ~ ~ air
execute as @s[tag=raw_pot] at @s run kill @e[limit=1,sort=nearest,type=minecraft:item_display,tag=raw_pot_display,distance=..1]
execute as @s[tag=raw_pot] at @s run kill @e[limit=1,sort=nearest,type=minecraft:armor_stand,tag=raw_pot,distance=..1]
execute as @s[tag=raw_pot] at @s run summon item ~ ~ ~ {Item:{id:clay_ball,count:3,components:{custom_data:{clay:1},custom_name:{"text":"Clay","italic":false}}}}

execute as @s[tag=cured_pot] at @s run setblock ~ ~ ~ air
execute as @s[tag=cured_pot] at @s run kill @e[limit=1,sort=nearest,type=minecraft:armor_stand,tag=cured_pot,distance=..1]
execute as @s[tag=cured_pot] at @s run summon item ~ ~ ~ {Item:{id:clay_ball,count:3,components:{custom_data:{clay:1},custom_name:{"text":"Clay","italic":false}}}}