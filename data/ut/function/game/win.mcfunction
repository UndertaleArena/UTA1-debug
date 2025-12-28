#By Nebulirion

#####GameMode (Win Message)
execute if score -GameMode game matches 1 run function ut:game/arena/win
execute if score -GameMode game matches 2 run function ut:game/boss/win
execute if score -GameMode game matches 3 run function ut:game/kill/win
execute if score -GameMode game matches 4 run function ut:game/team/win
execute if score -GameMode game matches 5 run function ut:game/soul/win
execute if score -GameMode game matches 6 run function ut:game/dog/win
execute if score -GameMode game matches 7 run function ut:game/siege/win

#####Stats
tag @a[tag=!winner] add no_firework

scoreboard players add -total gamesfinished 1

execute if score -Enabled stat matches 1 as @a[team=!] run function ut:stats/win_player

execute if score -Enabled stat matches 1 run function ut:stats/update_main

function ut:game/border/game_end
scoreboard players operation -speed border *= 2 const

scoreboard players set #ended game 1
scoreboard players set -Enabled stat 0

bossbar set p0_line1 players
function ut:player/bossbar/adjust

#####Players
tag @a add no_mc_dmg
effect give @a minecraft:weakness infinite 1 true

#####Timer
function ut:system/clear_schedule

schedule function ut:game/celebrate 1s

schedule function ut:game/lobby_pre 5s
schedule function ut:game/lobby 8s