#By Nebulirion

scoreboard players set @s disco_timer 100
scoreboard players add @s[tag=!effect_disco] move_loop 1
tag @s add effect_disco

attribute @s generic.movement_speed modifier add discospeed 0.25 add_multiplied_total