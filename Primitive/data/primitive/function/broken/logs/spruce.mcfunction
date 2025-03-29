execute at @s run setblock ~ ~ ~ minecraft:stripped_spruce_log
execute at @s run summon item ~ ~ ~ {Item:{id:stick,count:1,components:{custom_data:{bark:2,burn_time:20},custom_name:{"text":"Spruce bark","italic":false},item_model:"primitive_pack:spruce_bark"}}}
kill @s