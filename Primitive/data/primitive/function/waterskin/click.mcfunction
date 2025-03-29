execute as @s[scores={thirst=..19}, nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{filled:1}}}}] run function primitive:waterskin/drink
execute as @s[tag=looking_water,scores={click_detect=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{filled:0}}}}] run function primitive:waterskin/fill

scoreboard players set @s click_detect 0