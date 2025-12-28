#NYEH!

tp @s ~ ~ ~ facing entity @p[tag=playing,tag=!untargetable]
scoreboard players add @s life 1
execute if score @s life matches 30.. if entity @p[tag=playing,tag=!untargetable,distance=..16] anchored eyes run function ut:move/bone/cast
execute if score @s life matches 30.. run scoreboard players reset @s life