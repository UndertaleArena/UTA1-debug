###Generated from Nebulagen made By Nebulirion
#12/16/2021, 01:51:22

###START
tag @s add atker
###HITBOX DETECTION
scoreboard players operation #atker pid = @s pid
execute as @e[type=armor_stand,tag=mini_dummy,tag=active] run function ut:lobby/minis/dummy/move/bone/_sys/hitcheck
###DETERMINE TARGET
execute as @e[type=armor_stand,tag=hitcheck_target,sort=nearest,limit=1] run function ut:lobby/minis/dummy/move/bone/hit
###FINISH
tag @s remove atker