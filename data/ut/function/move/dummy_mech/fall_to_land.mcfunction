###Generated from Nebulagen made By Nebulirion
#03/13/2021, 13:37:48

tag @s add landed
tag @s remove falling

scoreboard players set @s life 0
scoreboard players set @s life2 -10
execute positioned ~ ~-1 ~ align y run tp @s ~ ~1 ~ ~ 0

execute at @s unless block ~ ~ ~ #ut:trans run tp @s ~ ~1 ~ ~ 0
execute at @s unless block ^ ^ ^1 #ut:trans run tp @s ~ ~ ~ ~180 0

function ut:move/void/vapor_check
execute unless score #isVoid store matches 1 positioned as @s run particle item{item:stone} ~ ~.2 ~ 0.15 0 0.15 0.05 20