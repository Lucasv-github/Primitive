execute at @s run summon item ~ ~ ~ {Item:{id:clay_ball,count:3,components:{custom_data:{clay:1},custom_name:{"text":"Clay","italic":false}}}}
execute at @s run kill @e[limit=1,sort=nearest,type=minecraft:item_display,tag=raw_pot_display,distance=..1]
execute at @s run kill @e[limit=1,sort=nearest,type=minecraft:armor_stand,tag=raw_pot,distance=..1]
kill @s