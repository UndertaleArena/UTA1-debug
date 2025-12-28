#By Nebulirion

#scoreboard players set -FilterCM leaderboard 2
#scoreboard players add -FilterM leaderboard 1
#execute unless score -FilterM leaderboard matches 0..7 run scoreboard players set -FilterM #leaderboard 0
#execute if score -FilterM leaderboard matches 0 run scoreboard players set -FilterCM leaderboard 0

execute if score -FilterM leaderboard matches 1 run data modify storage ut:soul PickleMeterB set value '{"translate":"las.gamemode.1"}'
execute if score -FilterM leaderboard matches 2 run data modify storage ut:soul PickleMeterB set value '{"translate":"las.gamemode.2"}'
execute if score -FilterM leaderboard matches 3 run data modify storage ut:soul PickleMeterB set value '{"translate":"las.gamemode.3"}'
execute if score -FilterM leaderboard matches 4 run data modify storage ut:soul PickleMeterB set value '{"translate":"las.gamemode.4"}'
execute if score -FilterM leaderboard matches 5 run data modify storage ut:soul PickleMeterB set value '{"translate":"las.gamemode.5"}'
execute if score -FilterM leaderboard matches 6 run data modify storage ut:soul PickleMeterB set value '{"translate":"las.gamemode.6"}'
execute if score -FilterM leaderboard matches 7 run data modify storage ut:soul PickleMeterB set value '{"translate":"las.gamemode.7"}'

#tellraw @s ["",{"translate":"pfx.settings"},{"translate":"mode set to:"},{"nbt":"PickleMeterB","storage": "ut:soul","interpret": true}]