scoreboard players set @s click_detect 0

scoreboard players set @s reg_1 0
execute store result score @s reg_1 run data get entity @s equipment.offhand.components.minecraft:custom_data.pot_water_amount

#Bail out if not enough
execute unless score @s reg_1 matches 5000.. run return 0

#Bail out if hand already filled
execute as @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{filled:1}}}}] run return 0

scoreboard players remove @s reg_1 5000
execute store result storage primitive:item_custom_data pot_water_amount int 1 run scoreboard players get @s reg_1

item modify entity @s weapon.offhand primitive:copy_custom_data

data remove storage primitive:item_custom_data pot_water_amount

item replace entity @s weapon.mainhand with minecraft:carrot_on_a_stick[minecraft:item_model="primitive_pack:waterskin_full",minecraft:custom_data={waterskin:1,filled:1},minecraft:custom_name=["",{"text":"Filled waterskin","italic":false}]]

#Raw
execute as @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{raw_water:1}}}}}] run data merge storage primitive:item_custom_data {raw_water:1}

#Boiled
execute as @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{boiled_water:1}}}}}] run data merge storage primitive:item_custom_data {boiled_water:1}

#Salt
execute as @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{salt_water:1}}}}}] run data merge storage primitive:item_custom_data {salt_water:1}

item modify entity @s weapon.mainhand primitive:copy_custom_data

data remove storage primitive:item_custom_data raw_water
data remove storage primitive:item_custom_data boiled_water
data remove storage primitive:item_custom_data salt_water

