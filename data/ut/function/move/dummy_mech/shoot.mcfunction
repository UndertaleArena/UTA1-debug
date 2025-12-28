###Generated from Nebulagen made By Nebulirion
#03/13/2021, 13:37:48

scoreboard players set @s life2 0

execute if entity @a[tag=dummy_target,limit=1] run scoreboard players add @s life 20
execute if entity @a[tag=dummy_target,limit=1] at @s rotated ~ 0 run function ut:move/dummy_bullet_mech/cast