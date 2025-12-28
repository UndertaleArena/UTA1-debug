#By Nebulirion
team empty t1
team empty t2
team empty t3
team empty t4
team empty t5
team empty t6
team empty t7
team empty t8
team empty boss
team empty nosoul

scoreboard players operation pl store = PlayerLimit info
function ut:system/team/balanced/get_players

scoreboard players set -PlayerTotal skill 0
scoreboard players add @a[tag=player] skill 0
scoreboard players operation -PlayerTotal skill += @a[tag=player] skill

execute store result score -PlayerCount skill if entity @a[tag=player]
scoreboard players operation -Imbalanced skill = -PlayerCount skill
scoreboard players operation -Imbalanced skill %= 2 const

scoreboard players operation -Average skill = -PlayerTotal skill
scoreboard players operation -Average skill /= -PlayerCount skill

scoreboard players operation -TeamGoal skill = -PlayerCount skill
scoreboard players operation -TeamGoal skill /= 2 const
scoreboard players operation -TeamGoal skill *= -Average skill

scoreboard players operation -PlayersLeft skill = -PlayerCount skill

#####################
####MAIN LOOP
scoreboard players set -Team1 skill 0
scoreboard players set -Team2 skill 0
execute if score -Imbalanced skill matches 1 run scoreboard players operation -Team2 skill -= -Average skill
function ut:system/team/balanced/calc_skill_dif

scoreboard players set -FristPick skill 1

execute if score -Imbalanced skill matches 1 run function ut:system/team/balanced/main_loop_t1
function ut:system/team/balanced/main_loop

#####################
####ENDING
function ut:system/team/shuffle_data
execute as @a[tag=t1] store result score @s tid run data get storage minecraft:soul RandomTeamList[0]
execute as @a[tag=t2] store result score @s tid run data get storage minecraft:soul RandomTeamList[1]
execute as @a[tag=picked] run function ut:system/team/join

tellraw @a ["",{"translate":"pfx.game"},{"translate":"cht.tjb0"}]
execute as @a[tag=picked] run function ut:system/team/random_msg

tag @a remove t1
tag @a remove t2
tag @a remove player
tag @a remove picked