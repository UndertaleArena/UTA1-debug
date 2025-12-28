#By Nebulirion

scoreboard players set @s newborn 2

scoreboard players set @s Q 3

scoreboard players set -replacedata store 1
function ut:stats/get_player_data
data modify storage utstats:main Data prepend from storage utstats:main LoadedPlayer
function ut:stats/load_for_new_player
