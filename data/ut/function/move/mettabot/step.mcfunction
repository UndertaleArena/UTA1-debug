#By Nebuliron

execute if score @s life2 matches 1 run playsound minecraft:block.fire.ambient player @a ~ ~ ~ .5 1.2
execute if score @s life2 matches 21 run playsound minecraft:block.fire.ambient player @a ~ ~ ~ .5 1.2
###
scoreboard players set #mettastop momentum 0
execute if entity @a[distance=..4,tag=mtb_target] run scoreboard players set #mettastop momentum 1
execute if score #mettastop momentum matches 1 run tag @p[distance=..4,tag=mtb_target] add los_check
function ut:move/los/check
execute unless score #insight store matches 1 run scoreboard players set #mettastop momentum 0

execute unless score #mettastop momentum matches 1 run particle flame ^ ^-0.3 ^-0.3 0.05 0.05 0.05 0.01 1 normal @a[scores={Q=2..}]

execute if score #mettastop momentum matches 1 facing entity @p[tag=mtb_target] eyes run tp @s ~ ~ ~ ~ ~
execute if score @s plt3 matches 3 unless score #mettastop momentum matches 1 facing entity @p[tag=mtb_target] eyes rotated ~15 ~ positioned ^ ^ ^0.5 if block ~ ~-0.25 ~ #ut:trans positioned ^ ^ ^-0.34 run tp @s ~ ~ ~ ~ ~
execute if score @s plt3 matches 2 unless score #mettastop momentum matches 1 facing entity @p[tag=mtb_target] eyes positioned ^ ^ ^0.5 if block ~ ~-0.25 ~ #ut:trans positioned ^ ^ ^-0.34 run tp @s ~ ~ ~ ~ ~
execute if score @s plt3 matches 1 unless score #mettastop momentum matches 1 facing entity @p[tag=mtb_target] eyes rotated ~-15 ~ positioned ^ ^ ^0.5 if block ~ ~-0.25 ~ #ut:trans positioned ^ ^ ^-0.34 run tp @s ~ ~ ~ ~ ~

execute unless score #mettastop momentum matches 1 at @s positioned ^ ^ ^0.5 unless block ~ ~-0.25 ~ #ut:trans positioned ^ ^ ^-1 if block ~ ~0.25 ~ #ut:trans run tp @s ~ ~0.25 ~ ~ ~

execute if score @s plt3 matches 3 unless score #mettastop momentum matches 1 at @s run tp @s ~ ~ ~ ~-10 ~
execute if score @s plt3 matches 1 unless score #mettastop momentum matches 1 at @s run tp @s ~ ~ ~ ~10 ~