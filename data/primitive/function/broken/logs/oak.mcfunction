execute at @s run setblock ~ ~ ~ minecraft:stripped_oak_log
execute at @s run summon item ~ ~ ~ {Item:{id:stick,count:1,components:{custom_data:{bark:1,burn_time:20},custom_name:{"text":"Oak bark","italic":false},item_model:"primitive_pack:oak_bark"}}}
kill @s