execute at @s run setblock ~ ~ ~ minecraft:stripped_jungle_log
execute at @s run summon item ~ ~ ~ {Item:{id:stick,count:1,components:{custom_data:{bark:4,burn_time:20},custom_name:{"text":"Jungle bark","italic":false},item_model:"primitive_pack:jungle_bark"}}}
kill @s