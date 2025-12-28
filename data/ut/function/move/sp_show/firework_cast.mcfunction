#By Nebulirion

execute if score -TeamMode game matches 1 store result entity @s FireworksItem.components."minecraft:fireworks".explosions[0].colors[0] int 1 run scoreboard players get -color store
execute unless block ~ ~ ~ #ut:trans run kill @s
tag @s remove summon


