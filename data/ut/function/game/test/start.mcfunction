#By Nebulirion

#Gamerules
scoreboard players set -Enabled stat 0
function ut:game/test/gamerule

#####Map
execute as @e[tag=arena_mid,sort=nearest,limit=1] at @s run function ut:game/arena/map

#####Gamemode
scoreboard objectives setdisplay list L

#####Players
execute as @a[tag=!play_game,tag=!sy] at @s run function ut:game/start_spectator
execute as @a[tag=play_game] at @s run function ut:game/start_player
function ut:system/give_gpid
function ut:player/bossbar/give_bid_new

#####Countdown
scoreboard players set #preGame game 1
schedule function ut:game/test/title 1t