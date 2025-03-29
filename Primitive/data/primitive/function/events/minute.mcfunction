#Thirst decrease
scoreboard players remove @a[scores={thirst=1..}] thirst 2
scoreboard players set @a[scores={thirst=..-1}] thirst 0