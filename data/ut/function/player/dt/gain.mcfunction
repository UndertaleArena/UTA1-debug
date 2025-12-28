#By Nebulirion

execute unless entity @s[tag=dt_lock] run scoreboard players operation @s dt += #gain dt

function ut:player/dt/update

execute if score #gain dt matches 4.. if entity @s[tag=effect_infolink] run function ut:player/dt/infolink

scoreboard players reset #gain dt