execute at @s run kill @e[limit=1,sort=nearest,type=minecraft:armor_stand,tag=cured_brick,distance=..1]

summon item ~ ~1 ~ {Item:{id:brick,count:1,components:{custom_name:[{"text":"Cured brick","italic":false}],custom_data:{cured_brick:1}}}}

kill @s