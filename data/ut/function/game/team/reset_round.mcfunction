#By Nebulirion#By Nebulirion

scoreboard players add #round game 1
scoreboard players set #endedround game 0

scoreboard players set #ended game 0
scoreboard players set -Enabled stat 1
schedule clear ut:game/celebrate

#####Cleanup
kill @e[tag=move]

###TEAM
#####Map
#scoreboard players set #preGame game 1
#function ut:game/countdown/5
#schedule function ut:game/countdown/4 1s
#schedule function ut:game/countdown/3 2s
#schedule function ut:game/countdown/2 3s
#schedule function ut:game/countdown/1 4s
#schedule function ut:game/team/title 5s

execute as @a[team=!] run tag @s add playing

#####Players
scoreboard players set respawnType gamerule 2
execute as @a[tag=playing] at @s run function ut:move/player_loop/fullstop

scoreboard players set -roundresetingflag store 1
execute as @e[tag=team_spawn,scores={maplock=1}] at @s run function ut:game/team/reset_round_spawnpoint
execute as @a[tag=playing] at @s run function ut:player/respawn
scoreboard players set -roundresetingflag store 0

execute as @a[tag=playing] at @s run function ut:player/dt/reset
scoreboard players set respawnType gamerule 0

execute as @a[tag=playing] run function ut:game/title_effect
#function ut:player/bossbar/give_bid

scoreboard players set #preGame game 1
function ut:game/team/t3
schedule function ut:game/team/t2 1s
schedule function ut:game/team/t1 2s
schedule function ut:game/team/countdown_round 3s

function ut:game/border/start

#####Message
#tellraw @a ["",{"translate":"pfx.game"},]
