#By Nebulirion

#Make copy of the full data
data modify storage gamestat PlayerEntries set value []
data modify storage gamestat MainCopy set from storage gamestat Main

execute if data storage gamestat MainCopy[0] run function ut:stats/game/entry_sort_loop