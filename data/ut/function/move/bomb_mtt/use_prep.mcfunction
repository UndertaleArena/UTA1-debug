#By Nebulirion

scoreboard players set @s unloadtime 6
scoreboard players add @s cdcooldown 2

effect give @s levitation 2 3 true

scoreboard players set @s cd 0

scoreboard players set @s plt2 40
scoreboard players set @s plt2b 10

scoreboard players add @s[tag=!bomb_mtt_user] move_loop 1
tag @s add bomb_mtt_user