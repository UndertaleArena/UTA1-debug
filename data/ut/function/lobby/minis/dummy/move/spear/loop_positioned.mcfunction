###Generated from Nebulagen made By Nebulirion
#12/16/2021, 01:51:22

###MOTION
function ut:lobby/minis/dummy/move/spear/_sys/gravity
function ut:move/motion
###MOVEMENT
scoreboard players operation #this speed = @s speed
scoreboard players operation @s range -= #this speed
execute facing entity @s eyes run function ut:lobby/minis/dummy/move/spear/_sys/movement
###HITCHECK
scoreboard players set #hits hitcheck 1
execute if score #stop speed matches 1.. run function ut:lobby/minis/dummy/move/spear/hitcheck
###RANGE
execute if score @s range matches ..0 run function ut:lobby/minis/dummy/move/spear/deco
###MYCELIUM
function ut:lobby/minis/dummy/move/mycelium