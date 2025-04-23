#Joined before
execute as @s[tag=!joined_before] run function primitive:events/first_join

#Display thirst bar
execute as @s[nbt={Air:300s},gamemode=!creative] run function primitive:player/display_bar
execute as @s[nbt=!{Air:300s},gamemode=!creative] run function primitive:player/display_bar_underwater

#Death
execute as @s[scores={death_detect=1..}] run function primitive:events/death

#Sneak
execute as @s[scores={sneak_detect=1..}] run function primitive:events/sneaking
execute as @s[scores={sneak_detect=0},tag=sneaking] run function primitive:events/unsneak

#Lighting a fire
execute as @s[tag=!flint_offhand,nbt={equipment:{offhand:{id:"minecraft:flint",count:2}}}] run function primitive:fire/flint_swap
tag @s[tag=flint_offhand,nbt=!{equipment:{offhand:{id:"minecraft:flint",count:2}}}] remove flint_offhand

scoreboard players remove @a[scores={fire_counter=1..}] fire_counter 1

execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{forward:true}}}} run function primitive:moved
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{left:true}}}} run function primitive:moved
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{backward:true}}}} run function primitive:moved
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{right:true}}}} run function primitive:moved

#Placed item data
execute store result score @s reg_1 run data get entity @s SelectedItemSlot
execute unless score @s reg_1 = @s selected_item_slot run function primitive:events/slot_changed

#Allowing block breaks
tag @s remove looking_water
tag @s remove looking_pot
execute at @s[gamemode=!creative,gamemode=!spectator] anchored eyes positioned ^ ^ ^ anchored feet run function primitive:look_ray


#Waterskin use
execute as @s[scores={click_detect=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{waterskin:1}}}}] run function primitive:waterskin/click

#Fire drill use
execute as @s[scores={click_detect=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{fire_drill:1}}}}] run function primitive:fire/drill_use


scoreboard players set @s sneak_detect 0
scoreboard players set @s click_detect 0
