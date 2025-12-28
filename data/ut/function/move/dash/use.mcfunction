#By Nebulirion

tag @s add untargetable

scoreboard players operation #atker pid = @s pid
scoreboard players operation #atker tid = @s tid

scoreboard players set -dash_fail store 1

scoreboard players set @s plt2 23
particle dust{color:[1,0,0],scale:1.2} ~ ~1 ~ 0.4 0.5 0.4 0 15 force @a
execute at @s rotated ~ 0 positioned ^ ^ ^.25 run function ut:move/dash/step
execute if score -dash_fail store matches 1 align xyz run tp @s ~.5 ~ ~.5

tag @s remove dash_up
tag @s remove untargetable

scoreboard players set @s unloadtime 0
function ut:player/infight/use