#By Nebulirion
#By Nebulirion

scoreboard players set @s unloadtime 10
scoreboard players add @s mpcooldown 2

attribute @s generic.movement_speed modifier add lazerslow -0.6 add_multiplied_total

scoreboard players set @s plt1 21
scoreboard players add @s[tag=!lazer_user] move_loop 1
tag @s add lazer_user