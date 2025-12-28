#By Nebulirion

#score timer
execute if score @s lifetime matches 3 run function ut:lobby/minis/dummy/move/dummy/move/back

execute if score @s lifetime matches 2 run function ut:lobby/minis/dummy/move/dummy/move/toward

execute if score @s lifetime matches 1 run function ut:lobby/minis/dummy/move/dummy/move/rotate

execute if score @s lifetime matches 0 run function ut:lobby/minis/dummy/move/dummy/move/walk


