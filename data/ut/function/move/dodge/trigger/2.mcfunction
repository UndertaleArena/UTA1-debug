#By Nebulirion

#kill @e[tag=dodge]
tag @s add dodge_player
#
playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 0.8 1.2
particle minecraft:dust{color:[0,0,1],scale:0.6} ~ ~1 ~ 0.3 0.5 0.3 0 25 normal @a[scores={Q=2..}]
#
summon minecraft:marker ~ ~ ~ {Tags:[dodge,summon]}

scoreboard players set @s plt2b 8
function ut:move/dodge/trigger/3

tp @s @e[tag=dodge,limit=1]
function ut:move/teleport
kill @e[tag=summon]
#
execute at @s run particle minecraft:dust{color:[0.5,0.5,1.0],scale:0.6} ~ ~1 ~ 0.3 0.5 0.3 0 25
#

scoreboard players operation -add mp = @s mpmax
scoreboard players operation -add mp -= @s mp
execute if score -add mp matches 80.. run scoreboard players set -add mp 80
execute if score -add mp matches ..0 run scoreboard players set -add mp 0
scoreboard players operation @s mp += -add mp

function ut:player/mp/change
#
scoreboard players reset @s plt2b
tag @s remove dodge_player