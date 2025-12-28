###Generated from Nebulagen made By Nebulirion
#06/12/2024, 16:37:49

scoreboard players remove #temp speed 7
function ut:move/dummy_bullet_mech/_sys/hitbox
execute if score #temp speed matches 8.. if entity @s[tag=!hitcheck_target] positioned ^ ^ ^0.7 run function ut:move/dummy_bullet_mech/_sys/hitbox_extra_loop