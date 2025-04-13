#Curing
scoreboard players remove @s[scores={clay_cure_counter=1..}] clay_cure_counter 1
execute as @s[scores={clay_cure_counter=0}] run function primitive:clay/cure