#By Nebulirion

#score timer
execute if score @s lifetime matches 0 run function ut:lobby/minis/dummy/move/dummy/jump/jump

execute if score @s lifetime matches 1 run function ut:lobby/minis/dummy/move/dummy/jump/wait

execute if score @s lifetime matches 2 run function ut:lobby/minis/dummy/move/dummy/jump/landing