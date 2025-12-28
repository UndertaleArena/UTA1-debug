#By Nebulirion

scoreboard players add -Temp gamescore 1

execute if score -Temp gamescore > @e[type=marker,tag=team_spawn,scores={tbid=1},limit=1] gamescore run data modify storage bossbar ScoreAl append value ""
execute unless score -Temp gamescore > @e[type=marker,tag=team_spawn,scores={tbid=1},limit=1] gamescore run data modify storage bossbar ScoreAl append value ""

execute if score -Temp gamescore > @e[type=marker,tag=team_spawn,scores={tbid=1},limit=1] gamescore run data modify storage bossbar ScoreAr prepend value ""
execute unless score -Temp gamescore > @e[type=marker,tag=team_spawn,scores={tbid=1},limit=1] gamescore run data modify storage bossbar ScoreAr prepend value ""

execute if score -Temp gamescore > @e[type=marker,tag=team_spawn,scores={tbid=2},limit=1] gamescore run data modify storage bossbar ScoreBl append value ""
execute unless score -Temp gamescore > @e[type=marker,tag=team_spawn,scores={tbid=2},limit=1] gamescore run data modify storage bossbar ScoreBl append value ""

execute if score -Temp gamescore > @e[type=marker,tag=team_spawn,scores={tbid=2},limit=1] gamescore run data modify storage bossbar ScoreBr prepend value ""
execute unless score -Temp gamescore > @e[type=marker,tag=team_spawn,scores={tbid=2},limit=1] gamescore run data modify storage bossbar ScoreBr prepend value ""

execute if score -Temp gamescore < -Goal gamescore run function ut:game/soul/bossbar_update_heart_l