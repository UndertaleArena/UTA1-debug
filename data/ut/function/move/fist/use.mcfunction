#By Nebulirion

scoreboard players set -new mlmax 20
function ut:player/infight/use

tag @s add no_shield_gain

scoreboard players remove @s will 1
function ut:player/will/lose

scoreboard players set #damage damage 0
scoreboard players operation #damage damage *= @s atk
scoreboard players operation #damage damage /= #rate atk

execute as @a[tag=victim,limit=1,tag=!untargetable] at @s run function ut:move/fist/hitcheck

tag @s remove no_shield_gain