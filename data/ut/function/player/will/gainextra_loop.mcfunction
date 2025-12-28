#By Nebulirion


scoreboard players remove @s willextra 100
scoreboard players set #gain will 1
function ut:player/will/gain
execute if score @s willextra matches 100.. run function ut:player/will/gainextra_loop