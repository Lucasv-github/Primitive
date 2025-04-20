function primitive:fire/add_fuel

scoreboard players remove @s[tag=burning_stick,scores={fire_time=1..}] fire_time 1
execute as @s[tag=burning_stick,scores={fire_time=..0}] run function primitive:burning_stick/burned_out