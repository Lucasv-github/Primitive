data modify entity @s Item.components set value {custom_data:{processed:1,burn_time:10}}
execute at @s run summon item ~ ~ ~ {Item:{id:stick,count:1,components:{custom_data:{stick:1,burn_time:100},custom_name:{"text":"Oak stick","italic":false}}}}