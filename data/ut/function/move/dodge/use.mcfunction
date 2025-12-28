#By Nebulirion

scoreboard players set @s unloadtime 60
scoreboard players set @s cdcooldown 9999
function ut:player/infight/use

attribute @s generic.knockback_resistance modifier add dodgekbr 1.0 add_value
attribute @s generic.movement_speed modifier add dodgeslow -0.4 add_multiplied_total

effect clear @s jump_boost

scoreboard players set @s plt2 60

tag @s add counter
scoreboard players add @s[tag=!counter_dodge] move_loop 1
tag @s add counter_dodge

function ut:move/head/change