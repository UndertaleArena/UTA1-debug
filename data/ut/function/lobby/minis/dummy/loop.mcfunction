#By Nebulirion

#tag removing
execute as @a[tag=in_dummy_mng] at @s run function ut:lobby/minis/dummy/player/last

#new player tag
function ut:lobby/minis/dummy/player/tag

#move loop
execute unless entity @a[tag=in_dummy_mng] run function ut:lobby/minis/dummy/stop
execute if entity @a[tag=in_dummy_mng] run function ut:lobby/minis/dummy/inloop

#stuff clear
clear @a[tag=!in_dummy_mng] minecraft:carrot_on_a_stick[custom_data~{dm_move:1b}]