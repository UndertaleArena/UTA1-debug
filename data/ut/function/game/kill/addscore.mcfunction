#By Nebulirion
#
execute if score @s tid matches 1 run scoreboard players add team1 gamescore 1
execute if score @s tid matches 2 run scoreboard players add team2 gamescore 1
execute if score @s tid matches 3 run scoreboard players add team3 gamescore 1
execute if score @s tid matches 4 run scoreboard players add team4 gamescore 1
execute if score @s tid matches 5 run scoreboard players add team5 gamescore 1
execute if score @s tid matches 6 run scoreboard players add team6 gamescore 1
execute if score @s tid matches 7 run scoreboard players add team7 gamescore 1
execute if score @s tid matches 8 run scoreboard players add team8 gamescore 1
#
execute as @a[tag=playing] run function ut:game/kill/p_sync_score
#