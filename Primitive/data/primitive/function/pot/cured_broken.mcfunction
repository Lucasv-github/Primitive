execute at @s run kill @e[limit=1,sort=nearest,type=minecraft:armor_stand,tag=cured_pot,distance=..1]

execute at @s run summon item ~ ~ ~ {Item:{id:carrot_on_a_stick,components:{item_model:"minecraft:decorated_pot",custom_data:{cured_pot:1},custom_name:["",{"text":"Cured pot","italic":false}],attribute_modifiers:[{type:block_interaction_range,amount:-1,operation:add_multiplied_base,id:"1743179266883"}],tooltip_display:{hidden_components:[attribute_modifiers]}}}}
kill @s