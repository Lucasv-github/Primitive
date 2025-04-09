#TODO could also cache this in a scoreboard but there are some risks with that (picked up without value scored)

execute store result score @s reg_1 run data get entity @s Item.components.minecraft:custom_data.temperature
scoreboard players remove @s reg_1 1
execute store result entity @s Item.components.minecraft:custom_data.temperature int 1 run scoreboard players get @s reg_1

#TODO could make this a lot more compilcated but for now just counting down
execute as @s[scores={reg_1=..0}] run function primitive:temperature/cooled_down

#TODO possibly handle this with entity tag once item classification is done
execute at @s if predicate primitive:rain_hits run function primitive:temperature/cooled_down