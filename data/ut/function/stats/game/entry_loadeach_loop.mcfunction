#By Nebulirion

###STARTER
data modify storage gamestat Entry set from storage gamestat PlayerEntries[0]

###MAIN
execute store result score @s chr run data get storage gamestat Entry.Chr

execute store result score -add st_gametime run data get storage gamestat Entry.Time

execute store result score -add st_ckillc run data get storage gamestat Entry.Stats[0]
execute store result score -add st_csparec run data get storage gamestat Entry.Stats[1]
execute store result score -add st_cdeathc run data get storage gamestat Entry.Stats[2]
execute store result score -add st_cdmg run data get storage gamestat Entry.Stats[3]
execute store result score -add st_cdtuse run data get storage gamestat Entry.Stats[4]

scoreboard players operation -total st_ckillc += -add st_ckillc
scoreboard players operation -total st_csparec += -add st_csparec 
scoreboard players operation -total st_cdeathc += -add st_cdeathc 
scoreboard players operation -total st_cdmg += -add st_cdmg
scoreboard players operation -total st_cdtuse += -add st_cdtuse
scoreboard players operation -total st_gametime += -add st_gametime 

scoreboard players set -add st_gamesplayed 0
scoreboard players set -add st_gamesfinished 0
scoreboard players set -add st_gameswon 0
execute if score @s chr = #MainCharacter stat run scoreboard players operation -add st_gamesplayed = -total st_gamesplayed
execute if score @s chr = #MainCharacter stat run scoreboard players operation -add st_gamesfinished = -total st_gamesfinished
execute if score @s chr = #MainCharacter stat run scoreboard players operation -add st_gameswon = -total st_gameswon

####Update Character Stats
function ut:stats/update_stats_c
function ut:stats/advancement_check
function ut:stats/favourite/update_this

###ENDING
data remove storage gamestat PlayerEntries[0] 
execute if data storage gamestat PlayerEntries[0] run function ut:stats/game/entry_loadeach_loop