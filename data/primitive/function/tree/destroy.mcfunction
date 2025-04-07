execute store result storage primitive:drop_tree size int 1 run scoreboard players get @s total_tree_count

scoreboard players operation @s reg_1 = @s total_tree_count
scoreboard players operation @s reg_1 *= 1000 reg_1
execute store result storage primitive:drop_tree burn_time int 1 run scoreboard players get @s reg_1

function primitive:tree/drop_tree with storage primitive:drop_tree


function primitive:tree/destroy_iteration

kill @s