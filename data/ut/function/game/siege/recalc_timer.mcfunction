scoreboard players operation #bossbarTimerMax store = -Round1ResultTime siegegame
# scoreboard players remove #bossbarTimerMax store 200

scoreboard players operation #bossbar store = #bossbarTimerMax store
scoreboard players operation #bossbar store *= 15 const
scoreboard players operation #bossbar store /= 13 const

scoreboard players operation -TimerDisPad gamescore = #bossbar store
scoreboard players operation -TimerDisPad gamescore -= #bossbarTimerMax store
scoreboard players operation -TimerDisPad gamescore /= 2 const

execute store result bossbar score_a max run scoreboard players get #bossbar store
execute store result bossbar score_b max run scoreboard players get #bossbar store
