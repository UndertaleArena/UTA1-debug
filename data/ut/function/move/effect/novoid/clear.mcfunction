#By Nebulirion

scoreboard players reset @s novoid_timer

attribute @s generic.knockback_resistance modifier remove novoidkbr

effect clear @s levitation

tag @s[tag=!boss,tag=!effect_nofall] remove no_mc_dmg

scoreboard players remove @s[tag=effect_novoid] move_loop 1
tag @s remove effect_novoid
tag @s remove effect_novoid_inair