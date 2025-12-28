#By Nebulirion
#########

###SORTING THE SCORES
scoreboard players add -Index leaderboard_rank 1
execute as @e[tag=lb_player,tag=!lb_onrank] if score @s leaderboard_rank = -Index leaderboard_rank run function ut:stats/leader/display_line

execute if entity @e[tag=lb_player,tag=!lb_onrank] if score -Index leaderboard_rank < -Limit leaderboard_rank run function ut:stats/leader/display