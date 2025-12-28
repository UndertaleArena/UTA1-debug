#By Nebulirion

scoreboard players set #percentA gamescore 100
scoreboard players operation #percentA gamescore *= @e[type=marker,tag=team_spawn,scores={tbid=1},limit=1] gamescore
scoreboard players operation #percentA gamescore /= -Goal gamescore

scoreboard players set #percentB gamescore 100
scoreboard players operation #percentB gamescore *= @e[type=marker,tag=team_spawn,scores={tbid=2},limit=1] gamescore
scoreboard players operation #percentB gamescore /= -Goal gamescore

bossbar set score_a name [{"storage": "bossbar","nbt": "HeartA", "interpret": true},{"storage": "bossbar","nbt": "ScoreA", "interpret": true},"  -  ",{"storage": "bossbar","nbt": "ScoreB", "interpret": true},{"storage": "bossbar","nbt": "HeartB", "interpret": true}]

bossbar set score_b name [{"storage": "bossbar","nbt": "HeartB", "interpret": true},{"storage": "bossbar","nbt": "ScoreB", "interpret": true},"  -  ",{"storage": "bossbar","nbt": "ScoreA", "interpret": true},{"storage": "bossbar","nbt": "HeartA", "interpret": true}]