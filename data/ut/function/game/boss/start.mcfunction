#By Nebulirion

#Gamerules
function ut:game/boss/gamerule

#####Map
execute as @e[tag=arena_mid,sort=nearest,limit=1] at @s run function ut:game/arena/map

#####Gamemode
scoreboard players set #animation game 0
scoreboard players set #hasBoss game 0

scoreboard players reset * soul_count
scoreboard players set @a[tag=play_game] soul_count 0
execute store result score #boss soul_count if entity @a[tag=play_game]
scoreboard players operation #boss soul_count += B_Goal gamerulemode
execute unless score #boss soul_count matches 1.. run scoreboard players set #boss soul_count 1

scoreboard objectives setdisplay list soul_count

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
schedule function ut:game/boss/title 5s