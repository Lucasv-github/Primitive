execute at @s run setblock ~ ~ ~ minecraft:stripped_mangrove_log
execute at @s run summon item ~ ~ ~ {Item:{id:stick,count:1,components:{custom_data:{bark:7,burn_time:20},custom_name:{"text":"Mangrove bark","italic":false}}}}
kill @s