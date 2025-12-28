#By Nebulirion
###
scoreboard players set -replacedata store 0
function ut:stats/get_player_data
###
##Load Stats
scoreboard players operation -Index tech = @s chr
data modify storage ut:tech TargetList set from storage utstats:main LoadedPlayer.Characters
function ut:technical/index/r/1_32
data modify storage utstats:main LoadedStats set from storage ut:tech LoadedEntry

###
###Display Level
execute store result score -CharacterLevel stat run data get storage utstats:main LoadedStats.Levels[0]
execute store result score exp store run data get storage utstats:main LoadedStats.Levels[1]
function ut:stats/level/tonextlevel
scoreboard players operation exp store *= 20 const
scoreboard players operation exp store /= -ToNextLevel stat
function ut:stats/level/display

execute store result score #chrpick store run data get storage utstats:main LoadedStats.Stats[0]
execute store result score #chrwin store run data get storage utstats:main LoadedStats.Stats[2]
execute store result score #chrkill store run data get storage utstats:main LoadedStats.Stats[3]
execute store result score #chrspare store run data get storage utstats:main LoadedStats.Stats[4]
execute store result score #chrdmg store run data get storage utstats:main LoadedStats.Stats[6]

scoreboard players operation #chrelim store = #chrkill store
scoreboard players operation #chrelim store += #chrspare store

scoreboard players operation in damage = #chrdmg store
scoreboard players operation in damage *= 100 const
function ut:stats/display/n_to_s

item modify entity @s armor.feet ut:feet_stats_0
item modify entity @s armor.feet ut:feet_stats_1