scoreboard players add @s thirst 5
scoreboard players set @s[scores={thirst=21..}] thirst 20

execute if data entity @s SelectedItem.components.minecraft:custom_data.raw_water unless score @s raw_water_poisoning matches 0.. run scoreboard players set @s raw_water_poisoning 1200
execute if data entity @s SelectedItem.components.minecraft:custom_data.salt_water run scoreboard players remove @s thirst 10
scoreboard players set @s[scores={thirst=..0}] thirst 0

item replace entity @s weapon.mainhand with minecraft:carrot_on_a_stick[minecraft:item_model="primitive_pack:waterskin",minecraft:custom_data={waterskin:1,filled:0},minecraft:custom_name=["",{"text":"Waterskin","italic":false}]]
scoreboard players set @s click_detect 0