#By Nebulirion

scoreboard players add @s[tag=!effect_webbed] move_loop 1
tag @s add effect_webbed
tag @s remove effect_webbed_clear

attribute @s generic.movement_speed modifier add webbed_slow -0.25 add_multiplied_total