#By Nebulirion

#Gamerules
function ut:game/kill/gamerule

#####Map
execute as @e[tag=arena_mid,sort=nearest,limit=1] at @s run function ut:game/arena/map

#
scoreboard objectives setdisplay list gamescore
scoreboard players set @a gamescore 0

scoreboard players set team1 gamescore 0
scoreboard players set team2 gamescore 0
scoreboard players set team3 gamescore 0
scoreboard players set team4 gamescore 0
scoreboard players set team5 gamescore 0
scoreboard players set team6 gamescore 0
scoreboard players set team7 gamescore 0
scoreboard players set team8 gamescore 0

#
scoreboard players set -Goal gamescore 1
scoreboard players operation -Goal gamescore *= -PlayerCount game
scoreboard players operation -Goal gamescore += C_Goal gamerulemode
execute unless score -Goal gamescore matches 1.. run scoreboard players set -Goal gamescore 1

#####Players
execute as @a[tag=!play_game,tag=!sy] at @s run function ut:game/start_spectator
execute as @a[tag=play_game] at @s run function ut:game/start_player
function ut:system/give_gpid
function ut:player/bossbar/give_bid_new

#####Countdown
scoreboard players set #preGame game 1
function ut:game/countdown/t5
schedule function ut:game/countdown/t4 1s
schedule function ut:game/countdown/t3 2s
schedule function ut:game/countdown/t2 3s
schedule function ut:game/countdown/t1 4s
schedule function ut:game/kill/title 5s
