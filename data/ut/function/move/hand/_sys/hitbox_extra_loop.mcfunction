###Generated from Nebulagen made By Nebulirion
#06/24/2021, 20:52:56

scoreboard players remove #temp speed 8
function ut:move/hand/_sys/hitbox
execute if score #temp speed matches 9.. if entity @s[tag=!hitcheck_target] positioned ^ ^ ^0.8 run function ut:move/hand/_sys/hitbox_extra_loop