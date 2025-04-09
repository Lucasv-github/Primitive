execute if data entity @s equipment.offhand.components.minecraft:custom_data.fired_pot run function primitive:waterskin/fill_skin_pot

execute at @s[scores={click_detect=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{filled:1}}}}] if entity @e[type=armor_stand,distance=..2,tag=fired_pot,scores={pot_water_amount=..19999}] run function primitive:waterskin/fill_pot_skin
execute at @s[scores={click_detect=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{filled:1}}}}] if entity @e[type=armor_stand,distance=..2,tag=created_fire] run function primitive:waterskin/extinguish

execute as @s[scores={click_detect=1..},tag=looking_water,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{filled:0}}}}] run function primitive:waterskin/fill_skin_nature

execute as @s[scores={click_detect=1..,sneak_detect=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{filled:1}}}}] run function primitive:waterskin/empty_skin

execute as @s[scores={click_detect=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{filled:1}}}}] unless score @s thirst = primitive_settings max_thirst run function primitive:waterskin/drink

scoreboard players set @s click_detect 0