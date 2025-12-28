#By Nebulirion

#######################
##LOAD ENTRY
scoreboard players operation -Index tech = @s chr
data modify storage ut:tech TargetList set from storage utstats:main LoadedPlayer.Characters
function ut:technical/index/r/1_32
data modify storage utstats:main LoadedStats set from storage ut:tech LoadedEntry

##CHANGE ENTRY
function ut:stats/get_stats
function ut:stats/update_stats

##WRITE ENTRY
data modify storage ut:tech LoadedEntry set from storage utstats:main LoadedStats
function ut:technical/index/w/1_32
data modify storage utstats:main LoadedPlayer.Characters set from storage ut:tech TargetList
#######################