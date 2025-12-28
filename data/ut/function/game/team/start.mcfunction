#By Nebulirion

#Gamerules
scoreboard players set #endedround game 0
scoreboard players set #round game 1
function ut:game/team/gamerule

#####Map
execute as @e[tag=arena_mid,sort=nearest,limit=1] at @s run function ut:game/team/map

scoreboard objectives setdisplay list st_celimc
scoreboard players operation -Goal gamescore = D_Goal gamerulemode

#####Border
function ut:game/border/start

#####Players
execute as @a[tag=!play_game,tag=!sy] at @s run function ut:game/start_spectator
execute as @a[tag=play_game] at @s run function ut:game/start_player
function ut:system/give_gpid
function ut:player/bossbar/give_bid_new

function ut:game/team/bossbar_style

#####Countdown
scoreboard players set #preGame game 1
function ut:game/countdown/t5
schedule function ut:game/countdown/t4 1s
schedule function ut:game/countdown/t3 2s
schedule function ut:game/countdown/t2 3s
schedule function ut:game/countdown/t1 4s
schedule function ut:game/team/title 5s