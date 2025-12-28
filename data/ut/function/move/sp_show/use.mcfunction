#By Nebulirion

execute if score -Enabled stat matches 1 run scoreboard players add @s st_cdtuse 1
scoreboard players set #reset dt 1

scoreboard players set -Transform store 1
execute if data entity @s Inventory[{components:{"minecraft:custom_data":{sp_switch:1b},"minecraft:custom_model_data":108}}] run scoreboard players set -Transform store 0

###ROBOTS
function ut:move/sp_show/fireworks
function ut:move/sp_show/robot_2
execute unless score -Transform store matches 1 run function ut:move/sp_show/robot_3
execute if score -Transform store matches 1 as @e[tag=summon2] run scoreboard players add @s life 90
tag @e[tag=summon2] remove summon2

###ADV
execute if score -Transform store matches 1 run scoreboard players set @s advancement_c 0
execute if score -Transform store matches 0 run scoreboard players add @s[tag=!transformed] advancement_c 1
execute if score @s advancement_c matches 5.. if score @s chr matches 6 if score -Enabled stat matches 1 run function ut:stats/advancement_secret
execute if score @s advancement_c matches 5.. if score @s chr matches 16 if score -Enabled stat matches 1 run function ut:stats/advancement_secret

###TRANSFORM
scoreboard players set @s unloadtime 8
function ut:player/infight/use

execute if score -Transform store matches 1 run function ut:move/sp_show/transform
