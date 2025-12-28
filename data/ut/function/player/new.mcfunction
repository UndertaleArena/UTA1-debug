#By Nebulirion

function ut:player/effect
function ut:system/pid/give
tp @s 161 221.50 1280 90 -5

scoreboard players set @s rejoin 1

#advancement revoke @s everything
#recipe take @s *
gamemode adventure @s
clear @s

scoreboard players set @s newborn 1
execute unless score -InGame game matches 1 if score @s newborn matches 1 run function ut:player/born
