#Originally made by Nebulirion, edited by SY91419

#walking
tag @s add dummy_walker
function ut:lobby/minis/dummy/move/dummy/move/check
tag @s remove dummy_walker

#score
scoreboard players add @s life 1
execute if score @s life matches 40.. run function ut:lobby/minis/dummy/move/dummy/move/locate