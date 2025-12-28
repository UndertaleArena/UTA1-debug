#By Nebulirion

# Lock SpawnPoint
execute if score #preGameSiege game matches 1 as @a[tag=playing,scores={tbid=1}] run function ut:game/spawnlock

# Check Bossbar Display Type
execute if score G_SwitchSide gamerulemode matches 1 run function ut:game/siege/bossbar/info_side

#Check point A and B
scoreboard players set -pCountAtkInP store 0
execute unless score #ended game matches 1 as @e[type=marker,tag=arena_point_a,scores={maplock=1},tag=!captured] at @s run function ut:game/siege/point/loop
execute unless score #ended game matches 1 as @e[type=marker,tag=arena_point_b,scores={maplock=1},tag=!captured] at @s run function ut:game/siege/point/loop

# Timer Score
## end time detection
execute if score -Timer gamescore matches 1.. run scoreboard players remove -Timer gamescore 1
## round timer without the preparation time
execute if score -Timer gamescore < -TimerMax gamescore run scoreboard players add -RoundTimer gamescore 1

#Update Bossbar Display
## Fetch Current Time
scoreboard players operation #bossbar store = -Timer gamescore 
scoreboard players operation #bossbar store += -TimerDisPad gamescore 
# If Switch Occur, check 
# execute if score #round game matches 2 if score -Round1Prograss siegegame matches 45000 run function ut:game/siege/update_timer
## Update
execute store result bossbar score_a value run scoreboard players get #bossbar store
execute store result bossbar score_b value run scoreboard players get #bossbar store


# Final Rush
execute if score -Timer gamescore < -RushStart gamescore run function ut:game/siege/rushstart

# Overtime
execute unless score -Timer gamescore matches 1.. if score -pCountAtkInP store matches 1.. if score -Overtime gamescore matches 0 run function ut:game/siege/overtime

# Win Detection of SwitchSide Occur
execute if score #round game matches 2 if score -Prograss gamescore >= -Round1Prograss siegegame run function ut:game/siege/attacker_win
execute if score #round game matches 2 if score -Round1Prograss siegegame matches 45000.. \
if score -RoundTimer gamescore > -Round1ResultTime siegegame run function ut:game/siege/defender_win
# Win Detection of Defend side win
execute unless score -Timer gamescore matches 1.. if score -pCountAtkInP store matches 0 unless score #ended game matches 1 run function ut:game/siege/defender_win