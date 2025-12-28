#By Nebulirion

scoreboard players remove #adjustLim store 1

scoreboard players set #suc store 0
execute if entity @a[tag=target,limit=1,dx=1,dy=4,dz=1] positioned ~.5 ~ ~.5 if entity @a[tag=target,limit=1,dx=1,dy=4,dz=1] store result score #suc store run tp @s ~ ~1.5 ~

execute if score #suc store matches 0 if score #adjustLim store matches 1.. positioned ^ ^ ^.25 run function ut:move/spear/hit_atker_adjust