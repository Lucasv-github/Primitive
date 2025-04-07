execute at @s unless biome ~ ~ ~ #primitive:salty_water run item replace entity @s weapon.mainhand with minecraft:carrot_on_a_stick[minecraft:item_model="primitive_pack:waterskin_full",minecraft:custom_data={waterskin:1,filled:1,raw_water:1},minecraft:custom_name=["",{"text":"Filled waterskin","italic":false}]]

execute at @s if biome ~ ~ ~ #primitive:salty_water run item replace entity @s weapon.mainhand with minecraft:carrot_on_a_stick[minecraft:item_model="primitive_pack:waterskin_full",minecraft:custom_data={waterskin:1,filled:1,raw_water:1,salt_water:1},minecraft:custom_name=["",{"text":"Filled waterskin","italic":false}]]

scoreboard players set @s click_detect 0