setblock ~ ~ ~ minecraft:air

execute positioned ~1 ~ ~ if block ~ ~ ~ #logs run function primitive:tree/destroy_iteration
execute positioned ~-1 ~ ~ if block ~ ~ ~ #logs run function primitive:tree/destroy_iteration
execute positioned ~ ~1 ~ if block ~ ~ ~ #logs run function primitive:tree/destroy_iteration
execute positioned ~ ~-1 ~ if block ~ ~ ~ #logs run function primitive:tree/destroy_iteration
execute positioned ~ ~ ~1 if block ~ ~ ~ #logs run function primitive:tree/destroy_iteration
execute positioned ~ ~ ~-1 if block ~ ~ ~ #logs run function primitive:tree/destroy_iteration
