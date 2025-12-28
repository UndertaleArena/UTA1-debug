#By Nebulirion

scoreboard players set @s unloadtime 16
scoreboard players add @s[tag=attack_buffed] unloadtime 2
scoreboard players add @s mpcooldown 10

scoreboard players set @s plt1 2
scoreboard players add @s[tag=attack_buffed] plt1 10
scoreboard players set @s plt1b 8
scoreboard players set @s plt1c 1
scoreboard players add @s[tag=!fireball_t_user] move_loop 1
tag @s add fireball_t_user