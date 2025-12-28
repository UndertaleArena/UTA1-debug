#By Nebulirion
#########

data modify storage utstats:temp UUID set from storage utstats:main LoadedPlayer.UUID
execute store success score #success leaderboard run data modify storage utstats:temp UUID set from entity @s UUID
execute if score #success leaderboard matches 0 run tag @s add lb_target
execute if score #success leaderboard matches 0 run scoreboard players set #isonline leaderboard 1