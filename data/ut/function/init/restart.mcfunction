###Generated from Nebulagen made By Nebulirion
#06/19/2021, 22:22:11

execute unless entity @a run say *Server Restart Detected*
execute unless entity @a run scoreboard players reset * rejoin

scoreboard players set DISPLAY leaderboard_rank 5

function ut:init/scoreboard_install_1_2_2
function ut:init/scoreboard_install_1_2_3

function ut:stats/sync_totalgames

execute if score fun info matches 1..100 unless entity @a run function ut:game/lobby

execute if score ram_size store matches 1.. positioned 256 0 -256 run function ut:move/delete/ram