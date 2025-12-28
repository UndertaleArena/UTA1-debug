#By Nebulirion

scoreboard players set @s nojump_timer 3
scoreboard players reset @s jump
scoreboard players add @s[tag=!effect_nojump] move_loop 1
tag @s add effect_nojump

effect clear @s jump_boost
attribute @s generic.jump_strength modifier add nojump -1000.0 add_value