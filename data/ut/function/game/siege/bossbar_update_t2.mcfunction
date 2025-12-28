# Origin by FocalSalt, edited by SY91419
scoreboard players operation #Tick siegegame = -Round1ResultTime siegegame
scoreboard players operation #Tick siegegame -= -RoundTimer gamescore
scoreboard players add #Tick siegegame 19

scoreboard players operation #Second siegegame = #Tick siegegame
scoreboard players operation #Second siegegame /= 20 const

scoreboard players operation #Minute siegegame = #Second siegegame
scoreboard players operation #Minute siegegame /= 60 const

scoreboard players operation #Second siegegame %= 60 const