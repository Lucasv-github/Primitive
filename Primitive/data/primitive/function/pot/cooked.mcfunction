execute as @s[tag=boiling] run function primitive:pot/boil_dry
execute as @s[tag=!boiling,tag=!boiled_dry] run function primitive:pot/boiling

