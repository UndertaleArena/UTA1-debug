#By Nebulirion

data modify storage bossbar ScoreAl set value []
data modify storage bossbar ScoreAr set value []
data modify storage bossbar ScoreBl set value []
data modify storage bossbar ScoreBr set value []

scoreboard players set -Temp gamescore 0
execute if score -Temp gamescore < -Goal gamescore run function ut:game/soul/bossbar_update_heart_l

bossbar set score_a name [{"storage": "bossbar","nbt": "HeartA", "interpret": true},{"storage": "bossbar","nbt": "ScoreAl", "interpret": true},"  -  ",{"storage": "bossbar","nbt": "ScoreBr", "interpret": true},{"storage": "bossbar","nbt": "HeartB", "interpret": true}]
bossbar set score_b name [{"storage": "bossbar","nbt": "HeartB", "interpret": true},{"storage": "bossbar","nbt": "ScoreBl", "interpret": true},"  -  ",{"storage": "bossbar","nbt": "ScoreAr", "interpret": true},{"storage": "bossbar","nbt": "HeartA", "interpret": true}]