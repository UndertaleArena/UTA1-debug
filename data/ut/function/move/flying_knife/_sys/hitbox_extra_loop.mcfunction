###Generated from Nebulagen made By Nebulirion
#06/12/2024, 16:37:49

scoreboard players remove #temp speed 9
function ut:move/flying_knife/_sys/hitbox
execute if score #temp speed matches 10.. if entity @s[tag=!hitcheck_target] positioned ^ ^ ^0.9 run function ut:move/flying_knife/_sys/hitbox_extra_loop