scoreboard players set @s reg_1 0
execute store result score @s reg_1 run data get entity @s equipment.offhand.components.minecraft:custom_data.pot_water_amount

execute unless score @s reg_1 matches 5.. run return 0

item replace entity @s weapon.mainhand with minecraft:carrot_on_a_stick[minecraft:item_model="primitive_pack:waterskin_full",minecraft:custom_data={waterskin:1,filled:1,boiled_water:1},minecraft:custom_name=["",{"text":"Filled waterskin","italic":false}]]

#TODO will need item modifier
item replace entity @s weapon.offhand with carrot_on_a_stick[custom_name=["",{"text":"Fired pot","italic":false}],attribute_modifiers=[{type:block_interaction_range,amount:-1,operation:add_multiplied_base,id:"1743610680549"}],item_model="minecraft:decorated_pot",custom_data={fired_pot:1},tooltip_display={hidden_components:[attribute_modifiers]}]

scoreboard players set @s click_detect 0