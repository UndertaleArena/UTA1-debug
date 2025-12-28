#By Nebulirion
#
scoreboard players operation #dummygain dt = #true_damage damage
scoreboard players operation #dummygain dt /= 2 const

execute unless entity @s[tag=dt_lock] run scoreboard players operation @s dt += #dummygain dt

function ut:player/dt/update
