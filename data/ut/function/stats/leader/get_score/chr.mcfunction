#By Nebulirion

scoreboard players set #scored leaderboard 1

##LOAD ENTRY
scoreboard players operation -Index tech = -FilterC leaderboard
data modify storage ut:tech TargetList set from storage utstats:main LoadedPlayer.Characters
function ut:technical/index/r/1_32
data modify storage utstats:main LoadedStats set from storage ut:tech LoadedEntry