#By Nebulirion

#tagging player
tag @s add check_in_dummy
tag @s remove in_dummy_mng

#tag if still in game range
function ut:lobby/minis/dummy/player/tag

#clear all stuff
execute if entity @s[tag=!in_dummy_mng] run function ut:lobby/minis/dummy/player/out
clear @a[tag=!in_dummy_mng] minecraft:carrot_on_a_stick[custom_data~{dm_move:1b}]

#tag remove
tag @s remove check_in_dummy