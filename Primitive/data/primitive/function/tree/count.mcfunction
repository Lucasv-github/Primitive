summon minecraft:armor_stand ~ ~ ~ {Tags:["tree_root"],NoGravity:1b}

scoreboard players set Temp tree_count 0
function primitive:tree/count_iteration

kill @e[tag=tree_blocked]

scoreboard players operation @e[limit=1,sort=nearest,tag=tree_root] tree_count = Temp tree_count
scoreboard players operation @e[limit=1,sort=nearest,tag=tree_root] total_tree_count = Temp tree_count