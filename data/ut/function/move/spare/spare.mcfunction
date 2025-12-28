#By Nebulirion

scoreboard players set -SpareSuccess store 1

execute rotated ~-60 ~ run function ut:move/spare/soul/cast

tag @s add spared
function ut:player/death/main
tag @s remove spared