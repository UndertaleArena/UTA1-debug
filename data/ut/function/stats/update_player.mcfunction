#By Nebulirion

###START
scoreboard players set -replacedata store 1
function ut:stats/get_player_data
scoreboard players operation -og chr = @s chr

###Record Game Stats
# - these stats update for the player, the mode, and the main character
scoreboard players operation -total st_gamesplayed = @s st_gamesplayed
scoreboard players operation -total st_gamesfinished = @s st_gamesfinished
scoreboard players operation -total st_gameswon = @s st_gameswon
scoreboard players reset @s st_gamesplayed
scoreboard players reset @s st_gamesfinished
scoreboard players reset @s st_gameswon

###Old stuff
# - these things are supposed to be outdated, but im too scared to remove them
scoreboard players set -add st_wp 0
scoreboard players set -add st_lp 0
scoreboard players set -add st_gamesquit 0
scoreboard players reset @s st_wp
scoreboard players reset @s st_lp
scoreboard players reset @s st_gamesquit

###Setup total
# - totals will be updated while going through the list
scoreboard players set -total st_ckillc 0
scoreboard players set -total st_csparec 0
scoreboard players set -total st_cdeathc 0
scoreboard players set -total st_cdmg 0
scoreboard players set -total st_cdtuse 0
scoreboard players set -total st_gametime 0

###Make a stat entry for the final character
function ut:stats/game/entry

###Load main character
function ut:stats/game/mainchr/setup

###Go through all the entries to sort out a list for the player
function ut:stats/game/entry_sort

###Decide main character
function ut:stats/game/mainchr/decide

###Update all fav values
function ut:stats/favourite/update_all

###Record stats for each and every character, also calculate the total
function ut:stats/game/entry_loadeach

###Record dog values
function ut:stats/update_dogs

#########################
####Update Total Stats
scoreboard players operation -add st_gamesplayed = -total st_gamesplayed
scoreboard players operation -add st_gamesfinished = -total st_gamesfinished
scoreboard players operation -add st_gameswon = -total st_gameswon
scoreboard players operation -add st_ckillc = -total st_ckillc
scoreboard players operation -add st_csparec = -total st_csparec
scoreboard players operation -add st_cdeathc = -total st_cdeathc
scoreboard players operation -add st_cdmg = -total st_cdmg
scoreboard players operation -add st_cdtuse = -total st_cdtuse
scoreboard players operation -add st_gametime = -total st_gametime
###Update Player Stats
function ut:stats/update_stats_p
####Update Gamemode Stats
execute if score -GameMode game matches 1.. run function ut:stats/update_stats_m
#########################

###Scores
function ut:stats/update_scores
function ut:stats/update_recipes
function ut:stats/update_advancements

###END
data modify storage utstats:main Data prepend from storage utstats:main LoadedPlayer
scoreboard players operation @s chr = -og chr

function ut:choose/stats