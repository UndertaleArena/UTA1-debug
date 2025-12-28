#By Nebulirion

scoreboard players remove @s vined_timer 1
execute unless score @s vined_timer matches 1.. run function ut:move/effect/vined/clear
