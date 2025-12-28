#By Nebulirion

scoreboard players set @s unloadtime 60
scoreboard players set @s cdcooldown 9999
function ut:player/infight/use

scoreboard players set @s plt2 60
tag @s add counter
scoreboard players add @s[tag=!counter_block] move_loop 1
tag @s add counter_block

attribute @s knockback_resistance modifier add blockkbr 1.0 add_value
attribute @s movement_speed modifier add blockslow -0.4 add_multiplied_total

effect clear @s jump_boost