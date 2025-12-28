#By Nebulirion

scoreboard players set -replacedata store 0

data modify storage utstats:temp All.Full prepend from storage utstats:temp All.RemovedPlayers[]
data modify storage utstats:main Data set from storage utstats:temp All.Full
#data remove storage utstats:temp All