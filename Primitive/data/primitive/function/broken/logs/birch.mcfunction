execute at @s run setblock ~ ~ ~ minecraft:stripped_birch_log
execute at @s run summon item ~ ~ ~ {Item:{id:stick,count:1,components:{custom_data:{bark:3,burn_time:5},custom_name:{"text":"Birch bark","italic":false}}}}
kill @s