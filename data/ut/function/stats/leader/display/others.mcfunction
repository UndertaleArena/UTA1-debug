#By Nebulirion
#########
#execute if score @s leaderboard_rank > -Limit leaderboard_rank run tellraw @s {"text":"...","color":"gray"}

##CASE INT
execute if score -FilterS leaderboard matches 1..8 run function ut:stats/leader/display/others/int

##CASE FLOAT
execute if score -FilterS leaderboard matches 9 run function ut:stats/leader/display/others/float100
execute if score -FilterS leaderboard matches 10 run function ut:stats/leader/display/others/float60
execute if score -FilterS leaderboard matches 13 run function ut:stats/leader/display/others/float

##CASE FLOAT
execute if score -FilterS leaderboard matches 11..12 run function ut:stats/leader/display/others/percent
