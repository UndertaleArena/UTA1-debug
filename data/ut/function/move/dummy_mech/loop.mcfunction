###Generated from Nebulagen made By Nebulirion
#06/12/2024, 16:37:49

###EXTRA
scoreboard players add @s life 1
execute if entity @s[tag=landed] run function ut:move/dummy_mech/loop_landed
execute if entity @s[tag=falling] run function ut:move/dummy_mech/loop_falling
execute if entity @s[tag=inair] run function ut:move/dummy_mech/loop_normal