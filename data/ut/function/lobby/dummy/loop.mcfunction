#By Nebulirion

tag @s add dummying
tp @s ~ ~ ~ ~ ~1
execute if entity @s[tag=moving] run function ut:lobby/dummy/loop_moving

execute unless score @s life2 matches 1.. positioned ~-1.5 ~-1.5 ~-1.5 as @e[dx=2,dy=2,dz=2,tag=floor_bone] run function ut:lobby/dummy/hit_floor_bone
scoreboard players remove @s[scores={life2=1..}] life2 1
execute positioned ~ ~1 ~ as @e[distance=..1,tag=bone] run function ut:lobby/dummy/hit
tag @s remove dummying