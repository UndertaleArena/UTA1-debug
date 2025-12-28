#By Nebulirion

execute if score #preGameSiege game matches 1 as @a[tag=playing,scores={tbid=1}] run function ut:game/spawnlock

#Check point A and B
scoreboard players set -pCountAtkInP store 0

execute unless score #ended game matches 1 as @e[type=marker,tag=arena_point_a,scores={maplock=1},tag=!captured] at @s run function ut:game/siege/point/loop
execute unless score #ended game matches 1 as @e[type=marker,tag=arena_point_b,scores={maplock=1},tag=!captured] at @s run function ut:game/siege/point/loop

execute if score -Timer gamescore matches 1.. run scoreboard players remove -Timer gamescore 1

#Update Bossbar Display
scoreboard players operation #bossbar store = -Timer gamescore 
scoreboard players operation #bossbar store += -TimerDisPad gamescore 
execute store result bossbar score_a value run scoreboard players get #bossbar store
execute store result bossbar score_b value run scoreboard players get #bossbar store

execute if score -Timer gamescore < -RushStart gamescore run function ut:game/siege/rushstart
execute unless score -Timer gamescore matches 1.. if score -pCountAtkInP store matches 0 unless score #ended game matches 1 run function ut:game/siege/defender_win