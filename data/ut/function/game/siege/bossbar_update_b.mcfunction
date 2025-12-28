#By Nebulirion

data modify storage bossbar Score set value []
execute unless score -pCountAtk store matches 1.. run data modify storage bossbar Score append value ' §7['
execute if score -pCountAtk store matches 1.. run data modify storage bossbar Score append value ' §c['

scoreboard players operation -ProgB gamescore = @e[tag=arena_point_b,limit=1,scores={maplock=1}] gamescore
scoreboard players operation -ProgB gamescore *= 100 const
scoreboard players operation -ProgB gamescore /= -GoalB gamescore

scoreboard players operation #BarCount gamescore = -ProgB gamescore
scoreboard players add #BarCount gamescore 3
scoreboard players operation #BarCount gamescore *= 4 const
scoreboard players operation #BarCount gamescore /= 25 const

scoreboard players set #SecEnd1 gamescore 4
scoreboard players set #SecEnd2 gamescore 13
execute if score -ProgB gamescore matches ..9 run scoreboard players set #SecEnd1 gamescore 5
execute if score -ProgB gamescore matches ..9 run scoreboard players set #SecEnd2 gamescore 11
execute if score -ProgB gamescore matches 100.. run scoreboard players set #SecEnd1 gamescore 2
execute if score -ProgB gamescore matches 100.. run scoreboard players set #SecEnd2 gamescore 14

scoreboard players set #BarTemp gamescore 0
scoreboard players operation #BarLimit gamescore = #SecEnd1 gamescore
function ut:game/siege/bossbar_update_l

#SectionBreak
data modify storage bossbar Score3 set from storage bossbar Score
data modify storage bossbar Score set value []

data modify storage bossbar Score append value '%'

scoreboard players operation #BarTemp gamescore = #SecEnd2 gamescore
scoreboard players set #BarLimit gamescore 16
function ut:game/siege/bossbar_update_l

execute unless score -pCountAtk store matches 1.. run data modify storage bossbar Score append value '§7] '
execute if score -pCountAtk store matches 1.. run data modify storage bossbar Score append value '§c] '
data modify storage bossbar Score4 set from storage bossbar Score