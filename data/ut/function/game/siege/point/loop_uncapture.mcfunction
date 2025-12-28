#By Nebulirion

scoreboard players remove @s gamescoresmall 1
execute unless score @s gamescoresmall matches 1.. run scoreboard players remove @s gamescore 50

execute if score @s gamescore matches 2..50 run scoreboard players set @s gamescore 0

execute if entity @s[tag=arena_point_a,tag=!captured] run function ut:game/siege/bossbar_update_a
execute if entity @s[tag=arena_point_b,tag=!captured] run function ut:game/siege/bossbar_update_b
function ut:game/siege/bossbar_update