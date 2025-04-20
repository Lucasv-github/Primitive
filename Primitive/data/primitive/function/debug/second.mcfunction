#Total entities
scoreboard players set Temp reg_1 0
execute as @e run scoreboard players add Temp reg_1 1
scoreboard players operation Total_entities primitive_info = Temp reg_1

#Total items
scoreboard players set Temp reg_1 0
execute as @e[type=minecraft:item] run scoreboard players add Temp reg_1 1
scoreboard players operation Total_items primitive_info = Temp reg_1

#Total armorstands
scoreboard players set Temp reg_1 0
execute as @e[type=minecraft:item] run scoreboard players add Temp reg_1 1
scoreboard players operation Total_armorstands primitive_info = Temp reg_1

#Total interactions
scoreboard players set Temp reg_1 0
execute as @e[type=minecraft:interaction] run scoreboard players add Temp reg_1 1
scoreboard players operation Total_interactions primitive_info = Temp reg_1

#Total item displays
scoreboard players set Temp reg_1 0
execute as @e[type=minecraft:item_display] run scoreboard players add Temp reg_1 1
scoreboard players operation Total_item_displays primitive_info = Temp reg_1