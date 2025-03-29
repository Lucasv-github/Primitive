scoreboard objectives add reg_1 dummy
scoreboard objectives add reg_2 dummy

scoreboard objectives add tick_counter dummy
scoreboard objectives add second_counter dummy

scoreboard objectives add debug trigger

scoreboard objectives add death_detect deathCount
scoreboard objectives add click_detect minecraft.used:minecraft.carrot_on_a_stick

scoreboard objectives add fire_counter dummy
scoreboard objectives add fire_time dummy
scoreboard objectives add total_fire_time dummy
scoreboard objectives add item_count dummy
scoreboard objectives add cook_time dummy
scoreboard objectives add break_counter dummy
scoreboard objectives add tree_count dummy
scoreboard objectives add total_tree_count dummy

scoreboard objectives add thirst dummy

scoreboard players set 5 reg_1 5
scoreboard players set 20 reg_1 20
scoreboard players set 60 reg_1 60
scoreboard players set 1000 reg_1 1000
scoreboard players set 1600 reg_1 1600

difficulty hard
gamerule playersSleepingPercentage 101

tellraw @a {text:"Primitive 1.21.5-0 loaded","bold":true,"color":"dark_green"}