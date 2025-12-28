#By Nebulirion

function ut:move/delete/restore
function ut:system/shulker/shulker_box_restore

#####Game
scoreboard players set #ended game 0
scoreboard players set #gameTick game 0
scoreboard players set #gameSec game 0
scoreboard players set #gameMin game 0
function ut:system/timer/reset
#
scoreboard players add #gameID game 1
#
scoreboard players set -InGame game 1

#####Cleanup
kill @e[type=item]
kill @e[tag=move]
function ut:system/clear_schedule
###Security
scoreboard players set #halfgainflag dt 0
scoreboard players reset * in_pregame

#####Count Players
#give all participating players a tag
team leave @a[tag=sy]
tag @a[team=!] add play_game
scoreboard players operation @a[tag=play_game] gid = #gameID game

#count players and teams
execute store result score -PlayerCount game if entity @a[tag=play_game]
scoreboard players set -TeamCount game 0
tag @a[tag=play_game] add counting_team
execute as @a[tag=play_game] run function ut:game/count_team

#if there's at least one team with more than 1 player, set -TeamMode to 1
scoreboard players set -TeamMode game 0
execute if score -PlayerCount game > -TeamCount game run scoreboard players set -TeamMode game 1
execute if score -GameMode game matches 4.. run scoreboard players set -TeamMode game 1

######Gamerule
function ut:game/gamerule
scoreboard objectives setdisplay below_name
execute if score hpDisplay gamerule matches 1 run scoreboard objectives setdisplay below_name hpdis
execute if score fallDamage gamerule matches 0 run gamerule fallDamage false
execute if score fallDamage gamerule matches 1 run gamerule fallDamage true
function ut:system/team/collision_on

#####Setup Stat Tracker
function ut:stats/game/setup
#
#####Message
tellraw @a [{"translate":"cht.line","color":"gold"}]
tellraw @a ["",{"translate":"pfx.game"},{"translate":"cht.gm0"}]
tellraw @a " "