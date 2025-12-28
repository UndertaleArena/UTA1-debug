#By Nebulirion

#Gamerules
scoreboard players set #round game 1
scoreboard players set #endedround game 0
function ut:game/siege/gamerule

###SIEGE INFO RESET
scoreboard players reset * siegegame

###TEAM
#####Map
execute as @e[tag=arena_mid,sort=nearest,limit=1] at @s run function ut:game/siege/map

# scores
function ut:game/siege/setup/mapscore
# Atker Setup
scoreboard players operation -FirstAttack siegegame = -SiegeAttack tid
scoreboard players operation -FirstDefend siegegame = -SiegeDefend tid

# timer bar setup
function ut:game/siege/setup/timer

#####Players
execute as @a[tag=!play_game,tag=!sy] at @s run function ut:game/start_spectator
execute as @a[tag=play_game] at @s run function ut:game/start_player
function ut:system/give_gpid
function ut:player/bossbar/give_bid_new

function ut:game/siege/bossbar_style
## Countdown
function ut:game/siege/setup/countdown