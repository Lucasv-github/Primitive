execute at @s run setblock ~ ~ ~ minecraft:stripped_cherry_log
execute at @s run summon item ~ ~ ~ {Item:{id:stick,count:1,components:{custom_data:{bark:8,burn_time:20},custom_name:{"text":"Cherry bark","italic":false}}}}
kill @s