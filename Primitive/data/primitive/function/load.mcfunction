scoreboard objectives add reg_1 dummy
scoreboard objectives add reg_2 dummy

scoreboard objectives add fire_counter dummy
scoreboard objectives add fire_time dummy
scoreboard objectives add total_fire_time dummy
scoreboard objectives add item_count dummy
scoreboard objectives add cook_time dummy
scoreboard objectives add break_counter dummy
scoreboard objectives add tree_count dummy
scoreboard objectives add total_tree_count dummy

scoreboard players set 1000 reg_1 1000
scoreboard players set 1600 reg_1 1600

difficulty hard
gamerule playersSleepingPercentage 101

tellraw @a {text:"Primitive loaded","bold":true,"color":"dark_green"}