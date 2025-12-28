#$(Round)

execute if score #round game matches 1 run scoreboard players add -Prograss gamescore 1
$scoreboard players operation -Round$(Round)Prograss siegegame = -Prograss gamescore
$execute if score -PointB gamescore matches 20000.. run scoreboard players set -Round$(Round)Prograss siegegame 45000
$scoreboard players operation -Round$(Round)ResultTime siegegame = -RoundTimer gamescore

