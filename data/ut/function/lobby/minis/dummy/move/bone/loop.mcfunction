###Generated from Nebulagen made By Nebulirion
#12/16/2021, 01:51:22

###MOVEMENT
scoreboard players operation #this speed = @s speed
scoreboard players operation @s range -= #this speed
function ut:lobby/minis/dummy/move/bone/_sys/movement
###HITCHECK
execute if score #stop speed matches 1.. run function ut:lobby/minis/dummy/move/bone/hitcheck
###RANGE
execute if score @s range matches ..0 run function ut:lobby/minis/dummy/move/bone/deco
###MYCELIUM
function ut:lobby/minis/dummy/move/mycelium