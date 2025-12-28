#By Nebulirion

#Check if entry belongs to player
data modify storage gamestat Entry set from storage gamestat MainCopy[0]
execute store result score #EntryPid stat run data get storage gamestat Entry.Pid

execute if score @s pid = #EntryPid stat run function ut:stats/game/entry_sort_match

data remove storage gamestat MainCopy[0] 
execute if data storage gamestat MainCopy[0] run function ut:stats/game/entry_sort_loop