#
scoreboard players set -RushStart gamescore -9999

execute as @a[scores={tbid=1}] at @s run function ut:move/effect/finalrush/give

execute as @a at @s run playsound entity.ender_dragon.growl player @s ~ ~ ~ .8 2

title @a title {"translate":"cht.gms.4a","color":"yellow"}
title @a subtitle {"translate":"cht.gms.4b","color":"white","with":["60"]}

title @a times 10 40 10
scoreboard players set @a title_timer 50
