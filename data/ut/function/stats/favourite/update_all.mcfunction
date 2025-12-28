#By Nebulirion

#say updateing favourite!!

data modify storage utstats:temp FavListOld set from storage utstats:main LoadedPlayer.Favourites
data modify storage utstats:temp FavListNew set value []

scoreboard players set -counter store 0
execute if data storage utstats:temp FavListOld[0] run function ut:stats/favourite/update_all_l

data modify storage utstats:main LoadedPlayer.Favourites set from storage utstats:temp FavListNew