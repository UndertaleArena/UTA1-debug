#By Nebulirion

data modify storage utstats:temp All.LoadedPlayer set from storage utstats:temp All.Full[0]

execute store success score -continue store run data modify storage utstats:temp All.LoadedPlayer.UUID set from entity @s UUID

execute if score -continue store matches 1 run data modify storage utstats:temp All.RemovedPlayers prepend from storage utstats:temp All.Full[0]

data remove storage utstats:temp All.Full[0]

execute if score -continue store matches 1 if data storage utstats:temp All.Full[0] run function ut:stats/get_player_data_l