#By Nebulirion

scoreboard players add @s[tag=!effect_vined] move_loop 1
tag @s add effect_vined

scoreboard players set @s vined_timer 6

attribute @s generic.movement_speed modifier add vined_slow -0.5 add_multiplied_total