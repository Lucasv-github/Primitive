execute at @s as @e[tag=created_fire,limit=1,sort=nearest] run function primitive:fire/extinguish

item replace entity @s weapon.mainhand with minecraft:carrot_on_a_stick[minecraft:item_model="primitive_pack:waterskin",minecraft:custom_data={waterskin:1,filled:0},minecraft:custom_name=["",{"text":"Waterskin","italic":false}]]
scoreboard players set @s click_detect 0