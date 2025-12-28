#By Nebulirion

scoreboard players operation #gain will += #damage damage
scoreboard players operation #gain will *= #gainPerDamage will

execute as @p[tag=atker_p] run function ut:player/will/gainextra

scoreboard players reset #gain will