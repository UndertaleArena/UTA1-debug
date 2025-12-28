#By Nebulirion

scoreboard players set @s nofall_timer 100

tag @s add no_mc_dmg
scoreboard players add @s[tag=!effect_nofall] move_loop 1
tag @s add effect_nofall