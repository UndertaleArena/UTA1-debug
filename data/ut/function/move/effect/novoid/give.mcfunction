#By Nebulirion

scoreboard players set @s novoid_timer 100

attribute @s generic.knockback_resistance modifier add novoidkbr 1.0 add_value

tag @s add no_mc_dmg

scoreboard players add @s[tag=!effect_novoid] move_loop 1
tag @s add effect_novoid
tag @s add effect_novoid_inair