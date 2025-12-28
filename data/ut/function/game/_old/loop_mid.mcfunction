#By Nebulirion#By Nebulirion

particle end_rod ~ ~3 ~

scoreboard players operation #this tid = @s tid
execute as @e[scores={maplock=1},tag=team_spawn] if score @s tid = #this tid run scoreboard players add @s gamescore 1

function ut:game/capture/bossbar_update

execute as @e[scores={maplock=1},tag=team_spawn] if score @s tid = #this tid if score @s gamescore >= -Goal gamescore unless score #ended game matches 1 run function ut:game/win
