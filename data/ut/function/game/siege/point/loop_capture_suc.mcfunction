#By Nebulirion

scoreboard players set #add gamescore 100
scoreboard players operation #add gamescore *= -pCountAtk store
scoreboard players operation #add gamescore /= -pCountAtkTot store

scoreboard players operation @s gamescore += #add gamescore
scoreboard players operation -PointA gamescore > @s[tag=arena_point_a] gamescore
scoreboard players operation -PointB gamescore > @s[tag=arena_point_b] gamescore

scoreboard players operation -Prograss gamescore = -PointA gamescore
scoreboard players operation -Prograss gamescore += -PrograssBonus gamescore
scoreboard players operation -Prograss gamescore += -PointB gamescore

execute if score @s[tag=arena_point_a] gamescore >= -GoalA gamescore run function ut:game/siege/point/capture_a
execute if score @s[tag=arena_point_b] gamescore >= -GoalB gamescore run function ut:game/siege/point/capture_b
