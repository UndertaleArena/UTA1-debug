#Original by Nebulirion, SY edited

function ut:move/hand/cast/count

execute as @e[tag=select_hand] if score @s passive_timer matches 3.. run function ut:void