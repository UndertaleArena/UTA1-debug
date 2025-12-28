###Generated from Nebulagen made By Nebulirion
#12/16/2021, 01:51:22

scoreboard players remove #temp speed 10
function ut:lobby/minis/dummy/move/spear/_sys/hitbox
execute if score #temp speed matches 11.. if entity @s[tag=!hitcheck_target] positioned ^ ^ ^1.0 run function ut:lobby/minis/dummy/move/spear/_sys/hitbox_extra_loop