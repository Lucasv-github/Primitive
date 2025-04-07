execute at @s run setblock ~ ~ ~ minecraft:stripped_acacia_log
execute at @s run summon item ~ ~ ~ {Item:{id:stick,count:1,components:{custom_data:{bark:5,burn_time:20},custom_name:{"text":"Acacia bark","italic":false},item_model:"primitive_pack:acacia_bark"}}}
kill @s