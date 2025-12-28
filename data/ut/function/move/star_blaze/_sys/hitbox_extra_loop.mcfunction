###Generated from Nebulagen made By Nebulirion
#06/12/2024, 16:37:49

scoreboard players remove #temp speed 14
function ut:move/star_blaze/_sys/hitbox
execute if score #temp speed matches 15.. if entity @s[tag=!hitcheck_target] positioned ^ ^ ^1.4 run function ut:move/star_blaze/_sys/hitbox_extra_loop