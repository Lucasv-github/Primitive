execute at @s run setblock ~ ~ ~ minecraft:clay
execute at @s run summon item ~ ~ ~ {Item:{id:clay_ball,count:1,components:{custom_data:{clay:1},custom_name:{"text":"Clay","italic":false}}}}
execute at @s align xyz positioned ~0.5 ~ ~0.5 unless entity @e[limit=1,sort=nearest,type=minecraft:armor_stand,tag=break_counter,distance=..0.5] run summon minecraft:armor_stand ~ ~ ~ {Tags:["break_counter"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b}
execute at @s run scoreboard players add @e[limit=1,sort=nearest,type=minecraft:armor_stand,tag=break_counter] break_counter 1
execute at @s as @e[limit=1,sort=nearest,type=minecraft:armor_stand,tag=break_counter] if score @s break_counter matches 64.. run function primitive:long_break_broken
kill @s