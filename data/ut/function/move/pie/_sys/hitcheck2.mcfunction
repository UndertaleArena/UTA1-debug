###Generated from Nebulagen made By Nebulirion
#06/12/2024, 16:37:49

scoreboard players set #check hitcheck 0
execute if score #hits hitcheck matches 1.. run scoreboard players add #check hitcheck 1
execute if score #check hitcheck matches 1 if score @s tid = #atker tid run scoreboard players set #check hitcheck 2
execute if score #check hitcheck matches 1 run function ut:move/counter/check
execute if score #check hitcheck matches 2 positioned as @s positioned ~ ~1 ~ as @e[tag=atker,limit=1] rotated as @s positioned ^ ^ ^-1 run function ut:move/pie/explode