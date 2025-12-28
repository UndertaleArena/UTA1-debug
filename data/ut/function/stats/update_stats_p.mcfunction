#By Nebulirion

function ut:stats/player_data/stats_player
function ut:stats/update_stats

function ut:stats/display/calculate_skill

data modify storage utstats:main LoadedPlayer.Player set from storage utstats:main LoadedStats
scoreboard players operation @s gamesfinished = -GamesFinished stat
scoreboard players operation @s st_dtuse = -DTused stat