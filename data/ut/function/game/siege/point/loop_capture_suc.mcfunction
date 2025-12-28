#By Nebulirion

scoreboard players set #add gamescore 100
scoreboard players operation #add gamescore *= -pCountAtk store
scoreboard players operation #add gamescore /= -pCountAtkTot store

scoreboard players operation @s gamescore += #add gamescore

execute if score @s[tag=arena_point_a] gamescore >= -GoalA gamescore run function ut:game/siege/point/capture_a
execute if score @s[tag=arena_point_b] gamescore >= -GoalB gamescore run function ut:game/siege/point/capture_b
