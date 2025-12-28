#By Nebulirion

scoreboard players operation #gain dt += #damage damage
scoreboard players operation #gain dt *= #gainPerDamage dt

execute if score #halfgainflag dt matches 1.. run scoreboard players operation #gain dt /= 2 const

execute unless score #nogainflag dt matches 1.. as @p[tag=atker_p] run function ut:player/dt/gain