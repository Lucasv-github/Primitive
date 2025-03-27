execute as @e[type=minecraft:item] run function primitive:item_handle
execute as @e[type=minecraft:armor_stand,tag=created_fire] run function primitive:fire/tick

execute as @a[tag=!flint_offhand,nbt={equipment:{offhand:{id:"minecraft:flint",count:2}}}] run function primitive:fire/flint_swap
execute as @a[tag=flint_offhand,nbt=!{equipment:{offhand:{id:"minecraft:flint",count:2}}}] run tag @s remove flint_offhand

execute as @a if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{forward:true}}}} run function primitive:moved
execute as @a if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{left:true}}}} run function primitive:moved
execute as @a if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{backward:true}}}} run function primitive:moved
execute as @a if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{right:true}}}} run function primitive:moved

execute as @a[gamemode=!creative,gamemode=!spectator] at @s anchored eyes positioned ^ ^ ^ anchored feet run function primitive:look_ray

scoreboard players remove @a[scores={fire_counter=1..}] fire_counter 1

execute as @e[type=minecraft:cow,tag=!modified_cow] run function primitive:modify/cow
execute as @e[type=minecraft:pig,tag=!modified_pig] run function primitive:modify/pig

execute as @e[tag=mob_ai] run function primitive:check_dispose_ai

execute as @e[tag=mob_ai] run data merge entity @s {Fire:-1000s}