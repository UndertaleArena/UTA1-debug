###Generated from Nebulagen made By Nebulirion
#06/12/2024, 16:37:49

###MOTION
function ut:move/red_trident/_sys/gravity
function ut:move/motion
###MOVEMENT
scoreboard players operation #this speed = @s speed
scoreboard players operation @s range -= #this speed
execute facing entity @s eyes run function ut:move/red_trident/_sys/movement
###HITCHECK
scoreboard players set #hits hitcheck 1
execute if score #stop speed matches 1.. run function ut:move/red_trident/hitcheck
###RANGE
execute if score @s range matches ..0 if score #hits hitcheck matches 1.. at @s positioned ~0.0 ~0.93 ~0.0 run function ut:move/red_trident/end