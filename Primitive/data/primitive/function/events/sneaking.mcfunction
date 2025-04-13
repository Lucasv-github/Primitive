#Allow clay shaping
function primitive:clay/allow_form

execute as @s[tag=!sneaking] run function primitive:events/sneak
tag @s add sneaking