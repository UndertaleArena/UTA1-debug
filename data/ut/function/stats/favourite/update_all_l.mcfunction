#By Nebulirion

scoreboard players add -counter store 1
execute store result score -Fav stat run data get storage utstats:temp FavListOld[0]

scoreboard players operation -Fav stat *= 11 const
scoreboard players operation -Fav stat /= 12 const

execute store result storage utstats:temp FavTemp int 1 run scoreboard players get -Fav stat
data modify storage utstats:temp FavListNew append from storage utstats:temp FavTemp

data remove storage utstats:temp FavListOld[0]
execute if data storage utstats:temp FavListOld[0] run function ut:stats/favourite/update_all_l