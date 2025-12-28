#By Nebulirion

#Gamerules
function ut:game/soul/gamerule

#####Map
execute as @e[tag=arena_mid,sort=nearest,limit=1] at @s run function ut:game/team/map

scoreboard objectives setdisplay list soul_count

scoreboard players set -Goal gamescore 3
scoreboard players operation -Goal gamescore *= -PlayerCount game
scoreboard players operation -Goal gamescore /= 2 const
scoreboard players operation -Goal gamescore += E_Goal gamerulemode
execute unless score -Goal gamescore matches 1.. run scoreboard players set -Goal gamescore 1

#####Players
execute as @a[tag=!play_game,tag=!sy] at @s run function ut:game/start_spectator
execute as @a[tag=play_game] at @s run function ut:game/start_player
function ut:system/give_gpid
function ut:player/bossbar/give_bid_new

function ut:game/soul/bossbar_style

execute if score -PlayerCount game matches ..2 run schedule function ut:game/soul/soul_at_mid 90s
execute if score -PlayerCount game matches 3..4 run schedule function ut:game/soul/soul_at_mid 120s
execute if score -PlayerCount game matches 5.. run schedule function ut:game/soul/soul_at_mid 150s

#####Countdown
scoreboard players set #preGame game 1
function ut:game/countdown/t5
schedule function ut:game/countdown/t4 1s
schedule function ut:game/countdown/t3 2s
schedule function ut:game/countdown/t2 3s
schedule function ut:game/countdown/t1 4s
schedule function ut:game/soul/title 5s