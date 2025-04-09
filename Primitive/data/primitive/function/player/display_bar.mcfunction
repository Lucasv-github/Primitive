#convert player thirst value into percentage
scoreboard players operation Temp reg_1 = @s thirst
scoreboard players operation Temp reg_1 *= 100 reg_1
scoreboard players operation Temp reg_1 /= primitive_settings max_thirst

#95+ (full)
execute if score Temp reg_1 matches 95.. run title @s actionbar {"text":"\uF001\uE002\uF002\uE002\uF002\uE002\uF002\uE002\uF002\uE002\uF002\uE002\uF002\uE002\uF002\uE002\uF002\uE002\uF002\uE002","font":"primitive_pack:bar"}

#18-19
execute if score Temp reg_1 matches 90..95 run title @s actionbar {"text":"\uF001\uE001\uF002\uE002\uF002\uE002\uF002\uE002\uF002\uE002\uF002\uE002\uF002\uE002\uF002\uE002\uF002\uE002\uF002\uE002","font":"primitive_pack:bar"}

#17-18
execute if score Temp reg_1 matches 85..90 run title @s actionbar {"text":"\uF001\uE000\uF002\uE002\uF002\uE002\uF002\uE002\uF002\uE002\uF002\uE002\uF002\uE002\uF002\uE002\uF002\uE002\uF002\uE002","font":"primitive_pack:bar"}

#16-17
execute if score Temp reg_1 matches 80..85 run title @s actionbar {"text":"\uF001\uE000\uF002\uE001\uF002\uE002\uF002\uE002\uF002\uE002\uF002\uE002\uF002\uE002\uF002\uE002\uF002\uE002\uF002\uE002","font":"primitive_pack:bar"}

#75-80
execute if score Temp reg_1 matches 75..80 run title @s actionbar {"text":"\uF001\uE000\uF002\uE000\uF002\uE002\uF002\uE002\uF002\uE002\uF002\uE002\uF002\uE002\uF002\uE002\uF002\uE002\uF002\uE002","font":"primitive_pack:bar"}

#70-75
execute if score Temp reg_1 matches 70..75 run title @s actionbar {"text":"\uF001\uE000\uF002\uE000\uF002\uE001\uF002\uE002\uF002\uE002\uF002\uE002\uF002\uE002\uF002\uE002\uF002\uE002\uF002\uE002","font":"primitive_pack:bar"}

#65-70
execute if score Temp reg_1 matches 65..70 run title @s actionbar {"text":"\uF001\uE000\uF002\uE000\uF002\uE000\uF002\uE002\uF002\uE002\uF002\uE002\uF002\uE002\uF002\uE002\uF002\uE002\uF002\uE002","font":"primitive_pack:bar"}

#60-65
execute if score Temp reg_1 matches 60..65 run title @s actionbar {"text":"\uF001\uE000\uF002\uE000\uF002\uE000\uF002\uE001\uF002\uE002\uF002\uE002\uF002\uE002\uF002\uE002\uF002\uE002\uF002\uE002","font":"primitive_pack:bar"}

#55-60
execute if score Temp reg_1 matches 55..60 run title @s actionbar {"text":"\uF001\uE000\uF002\uE000\uF002\uE000\uF002\uE000\uF002\uE002\uF002\uE002\uF002\uE002\uF002\uE002\uF002\uE002\uF002\uE002","font":"primitive_pack:bar"}

#50-55
execute if score Temp reg_1 matches 50..55 run title @s actionbar {"text":"\uF001\uE000\uF002\uE000\uF002\uE000\uF002\uE000\uF002\uE001\uF002\uE002\uF002\uE002\uF002\uE002\uF002\uE002\uF002\uE002","font":"primitive_pack:bar"}

#45-50
execute if score Temp reg_1 matches 45..50 run title @s actionbar {"text":"\uF001\uE000\uF002\uE000\uF002\uE000\uF002\uE000\uF002\uE000\uF002\uE002\uF002\uE002\uF002\uE002\uF002\uE002\uF002\uE002","font":"primitive_pack:bar"}

#40-45
execute if score Temp reg_1 matches 40..45 run title @s actionbar {"text":"\uF001\uE000\uF002\uE000\uF002\uE000\uF002\uE000\uF002\uE000\uF002\uE001\uF002\uE002\uF002\uE002\uF002\uE002\uF002\uE002","font":"primitive_pack:bar"}

#35-40
execute if score Temp reg_1 matches 35..40 run title @s actionbar {"text":"\uF001\uE000\uF002\uE000\uF002\uE000\uF002\uE000\uF002\uE000\uF002\uE000\uF002\uE002\uF002\uE002\uF002\uE002\uF002\uE002","font":"primitive_pack:bar"}

#30-35
execute if score Temp reg_1 matches 30..35 run title @s actionbar {"text":"\uF001\uE000\uF002\uE000\uF002\uE000\uF002\uE000\uF002\uE000\uF002\uE000\uF002\uE001\uF002\uE002\uF002\uE002\uF002\uE002","font":"primitive_pack:bar"}

#25-30
execute if score Temp reg_1 matches 25..30 run title @s actionbar {"text":"\uF001\uE000\uF002\uE000\uF002\uE000\uF002\uE000\uF002\uE000\uF002\uE000\uF002\uE000\uF002\uE002\uF002\uE002\uF002\uE002","font":"primitive_pack:bar"}

#20-25
execute if score Temp reg_1 matches 20..25 run title @s actionbar {"text":"\uF001\uE000\uF002\uE000\uF002\uE000\uF002\uE000\uF002\uE000\uF002\uE000\uF002\uE000\uF002\uE001\uF002\uE002\uF002\uE002","font":"primitive_pack:bar"}

#15-20
execute if score Temp reg_1 matches 15..20 run title @s actionbar {"text":"\uF001\uE000\uF002\uE000\uF002\uE000\uF002\uE000\uF002\uE000\uF002\uE000\uF002\uE000\uF002\uE000\uF002\uE002\uF002\uE002","font":"primitive_pack:bar"}

#10-15
execute if score Temp reg_1 matches 10..15 run title @s actionbar {"text":"\uF001\uE000\uF002\uE000\uF002\uE000\uF002\uE000\uF002\uE000\uF002\uE000\uF002\uE000\uF002\uE000\uF002\uE001\uF002\uE002","font":"primitive_pack:bar"}

#5-10
execute if score Temp reg_1 matches 5..10 run title @s actionbar {"text":"\uF001\uE000\uF002\uE000\uF002\uE000\uF002\uE000\uF002\uE000\uF002\uE000\uF002\uE000\uF002\uE000\uF002\uE000\uF002\uE002","font":"primitive_pack:bar"}

#0-5
execute if score Temp reg_1 matches 0..5 run title @s actionbar {"text":"\uF001\uE000\uF002\uE000\uF002\uE000\uF002\uE000\uF002\uE000\uF002\uE000\uF002\uE000\uF002\uE000\uF002\uE000\uF002\uE001","font":"primitive_pack:bar"}

#0 (empty)
execute if score Temp reg_1 matches 0 run title @s actionbar {"text":"\uF001\uE000\uF002\uE000\uF002\uE000\uF002\uE000\uF002\uE000\uF002\uE000\uF002\uE000\uF002\uE000\uF002\uE000\uF002\uE000","font":"primitive_pack:bar"}