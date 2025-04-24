execute store result score @s cook_item_count run data get entity @s Item.count

execute store result score @s cook_time_done run data get entity @s Item.components.minecraft:custom_data.cook_time_done

#Fallback
scoreboard players set @s[scores={cook_time_done=0}] cook_time_done 100

scoreboard players operation @s cook_time_done *= @s cook_item_count

