#By Nebulirion

#Gamerules
function ut:game/siege/gamerule

###TEAM
#####Map
execute as @e[tag=arena_mid,sort=nearest,limit=1] at @s run function ut:game/siege/map
scoreboard players operation -SiegeAttack tid = @e[tag=team_attack,limit=1,scores={maplock=1}] tid
scoreboard players operation -SiegeDefend tid = @e[tag=team_defend,limit=1,scores={maplock=1}] tid
execute as @e[tag=arena_point,scores={maplock=1}] run scoreboard players operation @s tid = -SiegeDefend tid
execute as @e[tag=arena_point,scores={maplock=1}] run scoreboard players set @s gamescore 0
execute as @e[tag=arena_point,scores={maplock=1}] run tag @s remove captured

scoreboard objectives setdisplay list st_celimc

scoreboard players set -TimerMax gamescore 6000

scoreboard players operation -Timer gamescore = -TimerMax gamescore
scoreboard players add -Timer gamescore 200

scoreboard players operation -RushStart gamescore = -TimerMax gamescore
scoreboard players operation -RushStart gamescore /= 5 const

scoreboard players operation #bossbar store = -TimerMax gamescore
scoreboard players operation #bossbar store *= 15 const
scoreboard players operation #bossbar store /= 13 const

scoreboard players operation -TimerDisPad gamescore = #bossbar store
scoreboard players operation -TimerDisPad gamescore -= -TimerMax gamescore
scoreboard players operation -TimerDisPad gamescore /= 2 const

execute store result bossbar score_a max run scoreboard players get #bossbar store
execute store result bossbar score_b max run scoreboard players get #bossbar store

scoreboard players set -PointA gamescore 0
scoreboard players set -PointB gamescore 0
scoreboard players set -GoalA gamescore 20000
scoreboard players set -GoalB gamescore 20000

#####Players
execute as @a[tag=!play_game,tag=!sy] at @s run function ut:game/start_spectator
execute as @a[tag=play_game] at @s run function ut:game/start_player
function ut:system/give_gpid
function ut:player/bossbar/give_bid_new

function ut:game/siege/bossbar_style

scoreboard players set #preGame game 1
scoreboard players set #preGameSiege game 1
function ut:game/siege/countdown/t5
schedule function ut:game/siege/countdown/t4 1s
schedule function ut:game/siege/countdown/t3 2s
schedule function ut:game/siege/countdown/t2 3s
schedule function ut:game/siege/countdown/t1 4s
schedule function ut:game/siege/countdown/tt5 5s
schedule function ut:game/siege/countdown/tt4 6s
schedule function ut:game/siege/countdown/tt3 7s
schedule function ut:game/siege/countdown/tt2 8s
schedule function ut:game/siege/countdown/tt1 9s
schedule function ut:game/siege/title_attack 10s
schedule function ut:game/siege/title_defend 5s