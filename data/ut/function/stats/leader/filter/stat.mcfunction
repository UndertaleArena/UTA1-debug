#By Nebulirion

#scoreboard players add -FilterS leaderboard 1
#execute unless score -FilterS leaderboard matches 1..13 run scoreboard players set -FilterS leaderboard 1

execute if score -FilterS leaderboard matches 1 run data modify storage ut:soul PickleMeterA set value '{"translate":"stattype.1"}'
execute if score -FilterS leaderboard matches 2 run data modify storage ut:soul PickleMeterA set value '{"translate":"stattype.2"}'
execute if score -FilterS leaderboard matches 3 run data modify storage ut:soul PickleMeterA set value '{"translate":"stattype.3"}'
execute if score -FilterS leaderboard matches 4 run data modify storage ut:soul PickleMeterA set value '{"translate":"stattype.4"}'
execute if score -FilterS leaderboard matches 5 run data modify storage ut:soul PickleMeterA set value '{"translate":"stattype.5"}'
execute if score -FilterS leaderboard matches 6 run data modify storage ut:soul PickleMeterA set value '{"translate":"stattype.6"}'
execute if score -FilterS leaderboard matches 7 run data modify storage ut:soul PickleMeterA set value '{"translate":"stattype.7"}'
execute if score -FilterS leaderboard matches 8 run data modify storage ut:soul PickleMeterA set value '{"translate":"stattype.8"}'
execute if score -FilterS leaderboard matches 9 run data modify storage ut:soul PickleMeterA set value '{"translate":"stattype.9"}'
execute if score -FilterS leaderboard matches 10 run data modify storage ut:soul PickleMeterA set value '{"translate":"stattype.10"}'
execute if score -FilterS leaderboard matches 11 run data modify storage ut:soul PickleMeterA set value '{"translate":"stattype.11"}'
execute if score -FilterS leaderboard matches 12 run data modify storage ut:soul PickleMeterA set value '{"translate":"stattype.12"}'
execute if score -FilterS leaderboard matches 13 run data modify storage ut:soul PickleMeterA set value '{"translate":"stattype.13"}'

#tellraw @s ["",{"translate":"pfx.settings"},{"translate":"stat set to:"},{"nbt":"PickleMeterA","storage": "ut:soul","interpret": true}]