#by Ds_Squid

function ut:player/infight/use

attribute @s knockback_resistance modifier add dodgekbr 1.0 add_value
attribute @s movement_speed modifier add dodgeslow -0.4 add_multiplied_total

effect clear @s jump_boost

scoreboard players set @s plt2c 16

tag @s add counter
scoreboard players add @s[tag=!counter_dodgep] move_loop 1
tag @s add counter_dodgep

function ut:move/head/change