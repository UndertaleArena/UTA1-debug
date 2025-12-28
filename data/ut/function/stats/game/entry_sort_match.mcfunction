#By Nebulirion

#Move the Entry to the player
execute store result score #EntryChr stat run data get storage gamestat Entry.Chr
execute store result score #EntryTime stat run data get storage gamestat Entry.Time

data modify storage gamestat PlayerEntries append from storage gamestat Entry

#Record the time
function ut:stats/game/mainchr/record