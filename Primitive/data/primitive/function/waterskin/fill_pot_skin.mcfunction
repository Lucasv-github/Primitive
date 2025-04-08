scoreboard players set Temp reg_1 5000
scoreboard players set Temp reg_2 0
scoreboard players set Temp reg_3 0
execute if data entity @s SelectedItem.components.minecraft:custom_data.raw_water run scoreboard players set Temp reg_2 1
execute if data entity @s SelectedItem.components.minecraft:custom_data.salt_water run scoreboard players set Temp reg_3 1

execute at @s as @e[tag=fired_pot,limit=1,sort=nearest] run function primitive:pot/add_water

item replace entity @s weapon.mainhand with minecraft:carrot_on_a_stick[minecraft:item_model="primitive_pack:waterskin",minecraft:custom_data={waterskin:1,filled:0},minecraft:custom_name=["",{"text":"Waterskin","italic":false}]]
scoreboard players set @s click_detect 0