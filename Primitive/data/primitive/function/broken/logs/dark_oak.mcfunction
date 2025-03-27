execute at @s run setblock ~ ~ ~ minecraft:stripped_dark_oak_log
execute at @s run summon item ~ ~ ~ {Item:{id:stick,count:1,components:{custom_data:{bark:6,burn_time:20},custom_name:{"text":"Dark oak bark","italic":false}}}}
kill @s