#Originally made by Nebulirion, edited by SY91419

#state check
##the pop up dummy
execute if score @s life2 matches 1 run function ut:lobby/minis/dummy/move/dummy/jump
##the moving dummy
execute if score @s life2 matches 2 run function ut:lobby/minis/dummy/move/dummy/move
##spared dummy
execute if score @s life2 matches 3 run function ut:lobby/minis/dummy/move/dummy/sky

##init, waiting or thing
execute if score @s life2 matches 0 run function ut:lobby/minis/dummy/move/dummy/wait