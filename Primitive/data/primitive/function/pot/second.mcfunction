#Heating the contents
scoreboard players remove @s[tag=fired_pot,tag=heated,scores={pot_cook_time=1..}] pot_cook_time 1
execute as @s[tag=fired_pot,scores={pot_cook_time=0}] run function primitive:pot/cooked

execute at @s[tag=boiling] run particle minecraft:white_smoke ~ ~1 ~ 0 0 0 0 10