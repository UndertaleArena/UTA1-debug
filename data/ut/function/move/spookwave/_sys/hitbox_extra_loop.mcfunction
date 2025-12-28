###Generated from Nebulagen made By Nebulirion
#06/12/2024, 16:37:49

scoreboard players remove #temp speed 22
function ut:move/spookwave/_sys/hitbox
execute if score #temp speed matches 23.. if entity @s[tag=!hitcheck_target] positioned ^ ^ ^2.2 run function ut:move/spookwave/_sys/hitbox_extra_loop