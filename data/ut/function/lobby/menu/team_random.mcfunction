#By Nebulirion

scoreboard players set @s unloadtime 10

scoreboard players operation TeamLimitOG info = TeamLimit info

execute if score -GameMode game matches 4.. run scoreboard players set TeamLimit info 2

function ut:system/team/random

scoreboard players operation TeamLimit info = TeamLimitOG info