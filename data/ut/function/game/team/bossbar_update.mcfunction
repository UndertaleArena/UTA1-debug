#By Nebulirion

data modify storage bossbar ScoreA set value []
data modify storage bossbar ScoreAr set value []
data modify storage bossbar ScoreB set value []
data modify storage bossbar ScoreBr set value []

scoreboard players set -Temp gamescore 0
execute if score -Temp gamescore < -Goal gamescore run function ut:game/team/bossbar_update_l

bossbar set score_a name [{"storage": "bossbar","nbt": "HeartA", "interpret": true},{"storage": "bossbar","nbt": "ScoreA", "interpret": true},"  -  ",{"storage": "bossbar","nbt": "ScoreBr", "interpret": true},{"storage": "bossbar","nbt": "HeartB", "interpret": true}]
bossbar set score_b name [{"storage": "bossbar","nbt": "HeartB", "interpret": true},{"storage": "bossbar","nbt": "ScoreB", "interpret": true},"  -  ",{"storage": "bossbar","nbt": "ScoreAr", "interpret": true},{"storage": "bossbar","nbt": "HeartA", "interpret": true}]