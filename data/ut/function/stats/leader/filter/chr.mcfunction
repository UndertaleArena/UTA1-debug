#By Nebulirion

#scoreboard players set -FilterCM leaderboard 1
#scoreboard players add -FilterC leaderboard 1
#execute unless score -FilterC leaderboard matches 0..16 run scoreboard players set -FilterC leaderboard 0
#execute if score -FilterC leaderboard matches 0 run scoreboard players set -FilterCM leaderboard 0

execute if score -FilterC leaderboard matches 1 run data modify storage ut:soul PickleMeterB set value '{"translate":"chr.sans"}'
execute if score -FilterC leaderboard matches 2 run data modify storage ut:soul PickleMeterB set value '{"translate":"chr.papyrus"}'
execute if score -FilterC leaderboard matches 3 run data modify storage ut:soul PickleMeterB set value '{"translate":"chr.undyne"}'
execute if score -FilterC leaderboard matches 4 run data modify storage ut:soul PickleMeterB set value '{"translate":"chr.frisk"}'
execute if score -FilterC leaderboard matches 5 run data modify storage ut:soul PickleMeterB set value '{"translate":"chr.flowey"}'
execute if score -FilterC leaderboard matches 6 run data modify storage ut:soul PickleMeterB set value '{"translate":"chr.mettaton"}'
execute if score -FilterC leaderboard matches 7 run data modify storage ut:soul PickleMeterB set value '{"translate":"chr.muffet"}'
execute if score -FilterC leaderboard matches 8 run data modify storage ut:soul PickleMeterB set value '{"translate":"chr.chara"}'
execute if score -FilterC leaderboard matches 9 run data modify storage ut:soul PickleMeterB set value '{"translate":"chr.toriel"}'
execute if score -FilterC leaderboard matches 10 run data modify storage ut:soul PickleMeterB set value '{"translate":"chr.asgore"}'
execute if score -FilterC leaderboard matches 11 run data modify storage ut:soul PickleMeterB set value '{"translate":"chr.asriel"}'
execute if score -FilterC leaderboard matches 12 run data modify storage ut:soul PickleMeterB set value '{"translate":"chr.tobyfox"}'
execute if score -FilterC leaderboard matches 13 run data modify storage ut:soul PickleMeterB set value '{"translate":"chr.alphys"}'
execute if score -FilterC leaderboard matches 14 run data modify storage ut:soul PickleMeterB set value '{"translate":"chr.napstablook"}'
execute if score -FilterC leaderboard matches 15 run data modify storage ut:soul PickleMeterB set value '{"translate":"chr.maddummy"}'
execute if score -FilterC leaderboard matches 16 run data modify storage ut:soul PickleMeterB set value '{"translate":"chr.mettatonex"}'

#tellraw @s ["",{"translate":"pfx.settings"},{"translate":"chr set to:"},{"nbt":"PickleMeterB","storage": "ut:soul","interpret": true}]