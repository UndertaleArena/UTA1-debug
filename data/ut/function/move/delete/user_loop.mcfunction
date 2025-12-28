#Original By Nebulirion, edited by SY

#item stop
execute if score @s plt3 matches 1.. unless data entity @s SelectedItem.components."minecraft:custom_data".delete run function ut:move/delete/stop_lite

#score setting
scoreboard players remove @s plt3 1

#state event
execute if score @s plt3 matches 80 run function ut:move/delete/start
#user_help
execute if score @s plt3 matches 0 run function ut:move/delete/stop_lite

#loop state
execute if score @s plt3 matches 1..80 run function ut:move/delete/user_target
execute unless score @s plt3 matches 1.. run function ut:move/delete/user_landing