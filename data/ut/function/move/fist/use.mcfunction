#By Nebulirion

scoreboard players set -new mlmax 20
function ut:player/infight/use

scoreboard players remove @s will 1
function ut:player/will/lose

scoreboard players set #damage damage 0
scoreboard players operation #damage damage *= @s atk
scoreboard players operation #damage damage /= #rate atk

execute as @a[tag=victim,limit=1,tag=!untargetable] at @s run function ut:move/fist/hitcheck