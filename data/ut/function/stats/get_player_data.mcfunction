#By Nebulirion
#########

#say data getting

data modify storage utstats:temp All.Full set from storage utstats:main Data
data modify storage utstats:temp All.RemovedPlayers set value []
scoreboard players set -continue store 1
execute if data storage utstats:temp All.Full[0] run function ut:stats/get_player_data_l

execute if score -continue store matches 0 run data modify storage utstats:main LoadedPlayer set from storage utstats:temp All.LoadedPlayer
execute if score -continue store matches 1 run function ut:stats/create_player_data/main

function ut:stats/version_check/pre

execute if score -replacedata store matches 1 run function ut:stats/get_player_data_r