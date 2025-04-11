#Writing to 0 might lead to stack incompatibility
data remove entity @s Item.components.minecraft:custom_data.hot
data remove entity @s Item.components.minecraft:custom_data.temperature

#We do not use kill as we would then need to transfer item count

execute as @s[nbt={Item:{id:"minecraft:charcoal"}}] run data merge entity @s {Item:{id:charcoal,components:{"minecraft:item_model":"minecraft:charcoal","minecraft:custom_data":{burn_time:1000}}}}
execute as @s[nbt={Item:{id:"minecraft:gray_dye",components:{"minecraft:custom_data":{ash:1}}}}] run data merge entity @s {Item:{id:gray_dye,components:{"minecraft:custom_name":{"text":"Ash","italic":false},"minecraft:custom_data":{ash:1}}}}
execute as @e[nbt={Item:{id:"minecraft:bat_spawn_egg",components:{"minecraft:custom_data":{burning_stick:1}}}}] run kill @s