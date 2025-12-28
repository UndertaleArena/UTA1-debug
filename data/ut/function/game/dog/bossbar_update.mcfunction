#By Nebulirion

data modify storage bossbar ScoreA set value []
data modify storage bossbar ScoreAr set value []
data modify storage bossbar ScoreB set value []
data modify storage bossbar ScoreBr set value []

scoreboard players set -Temp gamescore 0
execute if score -Temp gamescore < -Goal gamescore run function ut:game/team/bossbar_update_l

scoreboard players set #percentA gamescore 100
scoreboard players operation #percentA gamescore *= @e[type=marker,tag=team_spawn,scores={tbid=1},limit=1] gamescoresmall
scoreboard players operation #percentA gamescore /= -GoalSmall gamescore
scoreboard players operation dogCacheA gamescore = #percentA gamescore

scoreboard players set #percentB gamescore 100
scoreboard players operation #percentB gamescore *= @e[type=marker,tag=team_spawn,scores={tbid=2},limit=1] gamescoresmall
scoreboard players operation #percentB gamescore /= -GoalSmall gamescore
scoreboard players operation dogCacheB gamescore = #percentB gamescore

bossbar set score_a name [{"storage": "bossbar","nbt": "HeartA", "interpret": true},{"storage": "bossbar","nbt": "ScoreA", "interpret": true},{"storage": "bossbar","nbt": "ScoreAs", "interpret": true},"  -  ",{"storage": "bossbar","nbt": "ScoreBs", "interpret": true},{"storage": "bossbar","nbt": "ScoreBr", "interpret": true},{"storage": "bossbar","nbt": "HeartB", "interpret": true}]
bossbar set score_b name [{"storage": "bossbar","nbt": "HeartB", "interpret": true},{"storage": "bossbar","nbt": "ScoreB", "interpret": true},{"storage": "bossbar","nbt": "ScoreBs", "interpret": true},"  -  ",{"storage": "bossbar","nbt": "ScoreAs", "interpret": true},{"storage": "bossbar","nbt": "ScoreAr", "interpret": true},{"storage": "bossbar","nbt": "HeartA", "interpret": true}]