#By Nebulirion

scoreboard players operation #player tid = @s tid

tag @s add tobetp

execute as @e[tag=team_spawn,scores={maplock=1}] if score @s tid = #player tid at @s run tp @a[tag=tobetp] ~ ~ ~

tag @s remove tobetp