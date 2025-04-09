$data modify storage primitive:current_held_temp components set value $(components)

execute store result storage primitive:move_to_player_specific id int 1 run scoreboard players get @s player_id

function primitive:held/move_to_player_specific with storage primitive:move_to_player_specific

data remove storage primitive:current_held_temp components
data remove storage primitive:move_to_player_specific id

