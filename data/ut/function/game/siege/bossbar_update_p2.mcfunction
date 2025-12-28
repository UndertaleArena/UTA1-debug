scoreboard players operation #Sum siegegame = -PointA gamescore
scoreboard players operation #Sum siegegame += -PointB gamescore
scoreboard players operation #Sum siegegame += -PrograssBonus gamescore

scoreboard players operation #Progress siegegame = #Sum siegegame

#scoreboard players operation #Progress siegegame *= -1 const
#scoreboard players add #Progress siegegame 45000

# scoreboard players operation #Progress_ex siegegame = #Progress siegegame
# scoreboard players operation #Progress_ex siegegame *= 100 const
# scoreboard players operation #Progress_ex siegegame %= -Round1Prograss siegegame

scoreboard players operation #Progress siegegame *= 100 const
scoreboard players operation #Progress siegegame /= -Round1Prograss siegegame

# execute if score #Progress_ex siegegame matches 1.. run scoreboard players remove #Progress_ex siegegame 1

execute if score -RoundTimer gamescore matches ..20 run scoreboard players set #Progress siegegame 0
execute if score #Progress siegegame matches 100.. run scoreboard players set #Progress siegegame 100
execute if score -Round2Prograss siegegame > -Round1Prograss siegegame if score #Progress siegegame matches 0 run scoreboard players set #Progress siegegame 100


#execute if score #Sum siegegame < -Round1Prograss siegegame if score #Progress siegegame matches 100 run scoreboard players set #Progress siegegame 99