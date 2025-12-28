###Generated from Nebulagen made By Nebulirion
#06/12/2024, 16:37:49

scoreboard players remove #temp speed 8
function ut:move/pellet/_sys/hitbox
execute if score #temp speed matches 9.. if entity @s[tag=!hitcheck_target] positioned ^ ^ ^0.8 run function ut:move/pellet/_sys/hitbox_extra_loop