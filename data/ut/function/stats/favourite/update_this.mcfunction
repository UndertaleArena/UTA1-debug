#By Nebulirion

scoreboard players operation -Index tech = @s chr
data modify storage ut:tech TargetList set from storage utstats:main LoadedPlayer.Favourites
function ut:technical/index/r/1_32

execute store result score -Fav stat run data get storage ut:tech LoadedEntry
scoreboard players operation -Fav stat += -ThisGameExp stat
execute store result storage ut:tech LoadedEntry int 1 run scoreboard players get -Fav stat

function ut:technical/index/w/1_32
data modify storage utstats:main LoadedPlayer.Favourites set from storage ut:tech TargetList