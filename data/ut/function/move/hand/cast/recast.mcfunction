#Original by Nebulirion, SY edited

#remove old hands
execute as @e[tag=select_hand] run function ut:void
scoreboard players set #temp store 0

#loop casting hands
function ut:move/hand/cast/loop