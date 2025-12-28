#By Nebulirion

#######################
##LOAD ENTRY
scoreboard players operation -Index tech = -GameMode game
data modify storage ut:tech TargetList set from storage utstats:main LoadedPlayer.Gamemodes
function ut:technical/index/r/1_8
data modify storage utstats:main LoadedStats set from storage ut:tech LoadedEntry

##CHANGE ENTRY
function ut:stats/get_stats
function ut:stats/update_stats

##WRITE ENTRY
data modify storage ut:tech LoadedEntry set from storage utstats:main LoadedStats
function ut:technical/index/w/1_8
data modify storage utstats:main LoadedPlayer.Gamemodes set from storage ut:tech TargetList
#######################