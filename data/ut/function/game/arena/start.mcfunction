#By Nebulirion

#Gamerules
function ut:game/arena/gamerule

#####Map
execute as @e[tag=arena_mid,sort=nearest,limit=1] at @s run function ut:game/arena/map

#####Border
execute if score hasBorder gamerule matches 1 run function ut:game/border/start
scoreboard objectives setdisplay list L
execute if score A_Respawn gamerulemode matches 0 run scoreboard objectives setdisplay list st_celimc

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
schedule function ut:game/arena/title 5s