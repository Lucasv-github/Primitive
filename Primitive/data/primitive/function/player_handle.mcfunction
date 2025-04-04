#Joined before
execute as @s[tag=!joined_before] run function primitive:events/first_join

#Death
execute as @s[scores={death_detect=1..}] run function primitive:events/death

#Lighting a fire
execute as @s[tag=!flint_offhand,nbt={equipment:{offhand:{id:"minecraft:flint",count:2}}}] run function primitive:fire/flint_swap
tag @s[tag=flint_offhand,nbt=!{equipment:{offhand:{id:"minecraft:flint",count:2}}}] remove flint_offhand

scoreboard players remove @a[scores={fire_counter=1..}] fire_counter 1

execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{forward:true}}}} run function primitive:moved
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{left:true}}}} run function primitive:moved
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{backward:true}}}} run function primitive:moved
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{right:true}}}} run function primitive:moved


#Allowing block breaks
tag @s remove looking_water
execute at @s[gamemode=!creative,gamemode=!spectator] anchored eyes positioned ^ ^ ^ anchored feet run function primitive:look_ray


#Waterskin
execute as @s[scores={click_detect=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{waterskin:1}}}}] run function primitive:waterskin/click