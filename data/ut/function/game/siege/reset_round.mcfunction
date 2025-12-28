#By Nebulirion#By Nebulirion

scoreboard players add #round game 1
scoreboard players set #endedround game 0

scoreboard players set #ended game 0
scoreboard players set -Enabled stat 1
scoreboard players set #timerlocker game 0
schedule clear ut:game/celebrate

#####Cleanup
kill @e[tag=move]

###TEAM
#####Map
execute as @e[tag=arena_mid,sort=nearest,limit=1] at @s run function ut:game/siege/reset_round_map

# scores
function ut:game/siege/setup/mapscore

# Default Timer
function ut:game/siege/setup/timer

# # If Round 1 is attacker win
# execute if score -Round1Prograss siegegame matches 45000 run function ut:game/siege/recalc_timer

#####Players
execute as @a[tag=playing] at @s run function ut:move/player_loop/fullstop

scoreboard players set -roundresetingflag store 1
execute as @e[tag=team_spawn,scores={maplock=1}] at @s run function ut:game/team/reset_round_spawnpoint
execute as @a[tag=playing] at @s run function ut:player/respawn
scoreboard players set -roundresetingflag store 0

execute as @a[tag=playing] at @s run function ut:player/dt/reset
execute as @a[tag=playing] run function ut:game/title_effect

function ut:game/siege/bossbar_style
## Countdown
function ut:game/siege/setup/countdown
