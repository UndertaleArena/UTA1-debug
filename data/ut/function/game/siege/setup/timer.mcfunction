# Origin by Nebulirion & FocalSalt, arranged by SY91419

# Max possible time
scoreboard players set -TimerMax gamescore 6000

# Countback Timer
scoreboard players operation -Timer gamescore = -TimerMax gamescore
scoreboard players add -Timer gamescore 200
# FinalRush Line
scoreboard players operation -RushStart gamescore = -TimerMax gamescore
scoreboard players operation -RushStart gamescore /= 5 const

scoreboard players set -Overtime gamescore 0

# Setup Counter Bossbar Max
## Setup initial status of max value
scoreboard players operation #bossbar store = -TimerMax gamescore
scoreboard players operation #bossbar store *= 15 const
scoreboard players operation #bossbar store /= 13 const

scoreboard players operation #bossbar store = -TimerMax gamescore
# execute if score -Round1Prograss siegegame matches 45000 run scoreboard players operation #bossbar store = -Round1ResultTime siegegame
scoreboard players operation #bossbar store *= 15 const
scoreboard players operation #bossbar store /= 13 const
## Get some tricky offset
scoreboard players operation -TimerDisPad gamescore = #bossbar store
scoreboard players operation -TimerDisPad gamescore -= -TimerMax gamescore
# execute if score -Round1Prograss siegegame matches 45000 run scoreboard players operation -TimerDisPad gamescore -= -Round1ResultTime siegegame
scoreboard players operation -TimerDisPad gamescore /= 2 const

## Store the result into bossbar
execute store result bossbar score_a max run scoreboard players get #bossbar store
execute store result bossbar score_b max run scoreboard players get #bossbar store

# say hiawfi
# tellraw @a ["Cap Time: ",{score:{objective:"siegegame",name:"-Round1ResultTime"}}]
# tellraw @a ["Disp: ",{score:{objective:"gamescore",name:"-TimerDisPad"}}]
# tellraw @a ["Max of Bar: ",{score:{objective:"store",name:"#bossbar"}}]