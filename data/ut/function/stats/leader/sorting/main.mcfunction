#By Nebulirion
#########

scoreboard players set -MAX leaderboard 0
execute as @e[tag=lb_player,scores={leaderboard_rank=0}] run function ut:stats/leader/sorting/findmax

execute as @e[tag=lb_player,scores={leaderboard_rank=0}] if score @s leaderboard = -MAX leaderboard run function ut:stats/leader/sorting/match

execute if entity @e[tag=lb_player,scores={leaderboard_rank=0}] run function ut:stats/leader/sorting/main