#Writing to 0 might lead to stack incompatibility
data remove entity @s Item.components.minecraft:custom_data.hot
data remove entity @s Item.components.minecraft:custom_data.temperature

#We do not use kill as we would then need to transfer item count

execute as @s[nbt={Item:{id:"minecraft:charcoal",count:1}}] run data merge entity @s {Item:{id:charcoal,components:{item_model:"minecraft:charcoal",custom_data:{burn_time:1000}}}}
execute as @s[nbt={Item:{id:"minecraft:gray_dye",count:1,components:{"minecraft:custom_data":{ash:1}}}}] run data merge entity @s {Item:{id:gray_dye,components:{custom_name:{"text":"Ash","italic":false},custom_data:{ash:1}}}}