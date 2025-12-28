###Generated from Nebulagen made By Nebulirion
#06/12/2024, 16:37:49

scoreboard players remove #temp speed 6
function ut:move/bone_small/_sys/hitbox
execute if score #temp speed matches 7.. if entity @s[tag=!hitcheck_target] positioned ^ ^ ^0.6 run function ut:move/bone_small/_sys/hitbox_extra_loop