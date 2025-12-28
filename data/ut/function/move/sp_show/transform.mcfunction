#By Nebulirion

function ut:move/player_loop/fullstoplite

scoreboard players set -reset store 0
execute if entity @s[tag=transformed] run scoreboard players set -reset store 1

execute if score -reset store matches 0 run function ut:move/sp_show/transform_ex
execute if score -reset store matches 1 run function ut:move/sp_show/transform_reset

execute if score -TeamMode game matches 1 if score teamUniform gamerule matches 1 run function ut:choose/uniform

execute store result score @s mpcost run data get entity @s Inventory[{components:{"minecraft:custom_data":{mp_move:1b}}}].components."minecraft:custom_data".cost
execute store result score @s cdmax run data get entity @s Inventory[{components:{"minecraft:custom_data":{cd_move:1b}}}].components."minecraft:custom_data".cd

scoreboard players operation @s mp = @s mpmax
scoreboard players operation @s cd = @s cdmax
scoreboard players set @s cddis 100

execute at @s run particle poof ~ ~1 ~ 0.25 0.35 0.25 .1 100 normal @a[scores={Q=1..}]