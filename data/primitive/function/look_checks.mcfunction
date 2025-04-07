function primitive:block_break
execute if block ~ ~ ~ minecraft:decorated_pot if data block ~ ~ ~ item run function primitive:pot/fill
execute if block ~ ~ ~ minecraft:decorated_pot run tag @s add looking_pot
execute if block ~ ~ ~ #primitive:hand_break run function primitive:allow_break
