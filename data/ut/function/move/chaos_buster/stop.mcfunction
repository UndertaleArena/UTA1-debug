#By Nebulirion

execute if data entity @s SelectedItem.components."minecraft:custom_data".chaos_buster run function ut:move/chaos_buster/next_stage

function ut:player/infight/use

scoreboard players reset @s plt1
scoreboard players reset @s plt1b
scoreboard players remove @s[tag=chaos_buster_user] move_loop 1
tag @s remove chaos_buster_user