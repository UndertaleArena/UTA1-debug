#By Nebulirion

scoreboard players operation -ThisGameExp stat = -add st_gametime
execute if score -total st_gameswon matches 1.. run scoreboard players operation -ThisGameExp stat *= 2 const

scoreboard players operation -ThisGameKillExp stat = -add st_ckillc
scoreboard players operation -ThisGameKillExp stat += -add st_csparec
scoreboard players operation -ThisGameKillExp stat *= 1000 const

scoreboard players operation -ThisGameExp stat += -ThisGameKillExp stat
scoreboard players operation -ThisGameExp stat /= 100 const

###Add Exp
scoreboard players operation -CharacterExp stat += -ThisGameExp stat
scoreboard players operation -CharacterTotal stat += -ThisGameExp stat

###Calctulate the next Level needed Exp
function ut:stats/level/levelup_check