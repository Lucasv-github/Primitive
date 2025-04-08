#Thirst decrease
scoreboard players operation @a[scores={thirst=1..}] thirst -= primitive_settings minute_thirst
scoreboard players set @a[scores={thirst=..-1}] thirst 0

execute as @e[tag=rain_sensitive_minute] at @s positioned ~ ~1 ~ if predicate primitive:rain_hits run function primitive:events/rained_on_minute