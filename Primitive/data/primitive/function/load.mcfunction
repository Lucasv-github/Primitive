scoreboard objectives add reg_1 dummy
scoreboard objectives add reg_2 dummy
scoreboard objectives add reg_3 dummy
scoreboard objectives add reg_4 dummy

scoreboard objectives add player_id dummy
scoreboard objectives add selected_item_slot dummy

scoreboard objectives add tick_counter dummy
scoreboard objectives add second_counter dummy

scoreboard objectives add debug trigger

scoreboard objectives add death_detect deathCount
scoreboard objectives add sneak_detect minecraft.custom:minecraft.sneak_time
scoreboard objectives add click_detect minecraft.used:minecraft.carrot_on_a_stick

scoreboard objectives add raw_water_poisoning dummy

scoreboard objectives add pot_cure_counter dummy
scoreboard objectives add pot_water_amount dummy
scoreboard objectives add pot_salt_amount dummy
scoreboard objectives add pot_cook_time dummy

scoreboard objectives add hot_item_time dummy

scoreboard objectives add fire_counter dummy
scoreboard objectives add fire_time dummy
scoreboard objectives add total_fire_time dummy
scoreboard objectives add item_count dummy
scoreboard objectives add cook_time dummy
scoreboard objectives add break_counter dummy

scoreboard objectives add tree_count dummy
scoreboard objectives add total_tree_count dummy

scoreboard objectives add max_thirst dummy
scoreboard objectives add minute_thirst dummy
scoreboard objectives add thirst dummy

scoreboard players set 0 reg_1 0
scoreboard players set 1 reg_1 1
scoreboard players set 2 reg_1 2
scoreboard players set 3 reg_1 3
scoreboard players set 4 reg_1 4
scoreboard players set 5 reg_1 5
scoreboard players set 20 reg_1 20
scoreboard players set 60 reg_1 60
scoreboard players set 80 reg_1 80
scoreboard players set 100 reg_1 100
scoreboard players set 200 reg_1 200
scoreboard players set 1000 reg_1 1000
scoreboard players set 1600 reg_1 1600

scoreboard objectives setdisplay list player_id

#Settings
difficulty hard
gamerule playersSleepingPercentage 101

scoreboard players set primitive_settings max_thirst 10000
scoreboard players set primitive_settings minute_thirst 300

tellraw @a {text:"Primitive 1.21.5-0 loaded","bold":true,"color":"dark_green"}