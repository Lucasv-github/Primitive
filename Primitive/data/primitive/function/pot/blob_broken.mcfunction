execute at @s run setblock ~ ~ ~ air
execute at @s run summon item ~ ~ ~ {Item:{id:clay_ball,count:4,components:{custom_data:{clay:1},custom_name:{"text":"Clay","italic":false}}}}
execute at @s run kill @e[limit=1,sort=nearest,type=minecraft:armor_stand,tag=break_counter,distance=..1]
kill @s