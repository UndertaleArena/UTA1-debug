###Generated from Nebulagen made By Nebulirion
#06/12/2024, 16:37:49

###MOVEMENT
scoreboard players operation #this speed = @s speed
scoreboard players operation @s range -= #this speed
function ut:move/firehand_ball/_sys/movement
###HITCHECK
scoreboard players set #hits hitcheck 1
execute if score #stop speed matches 1.. run function ut:move/firehand_ball/hitcheck
###RANGE
execute if score @s range matches ..0 run function ut:void