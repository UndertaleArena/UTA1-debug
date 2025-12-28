###Generated from Nebulagen made By Nebulirion
#06/12/2024, 16:37:49

scoreboard players remove #temp speed 18
function ut:move/fireball_buffed/_sys/hitbox
execute if score #temp speed matches 19.. if entity @s[tag=!hitcheck_target] positioned ^ ^ ^1.8 run function ut:move/fireball_buffed/_sys/hitbox_extra_loop