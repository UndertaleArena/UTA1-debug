#By Nebulirion
#########

#GET THE NEXT PLAYER
data modify storage utstats:main LoadedPlayer set from storage utstats:temp All.Full[0]

#CHECK IF PLAYER IS ONLINE
scoreboard players set #isonline leaderboard 0
execute as @a run function ut:stats/leader/data_checkonline

#IF PLAYER IS NOT ONLINE: CREATE A DUMMY
execute if score #isonline leaderboard matches 0 run function ut:stats/leader/create_dummy

#STORE THE SCORE TO THE ENTITY
execute as @e[tag=lb_target] run function ut:stats/leader/get_score/main

#ENDING
tag @e[tag=lb_target] remove lb_target

#LOOPING
data remove storage utstats:temp All.Full[0]
execute if data storage utstats:temp All.Full[0] run function ut:stats/leader/data_next
