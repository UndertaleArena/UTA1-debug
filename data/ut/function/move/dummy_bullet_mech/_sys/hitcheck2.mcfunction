###Generated from Nebulagen made By Nebulirion
#06/12/2024, 16:37:49

scoreboard players set #check hitcheck 0
execute if score #hits hitcheck matches 1.. run scoreboard players add #check hitcheck 1
execute if score @s tid = #atker tid run scoreboard players set #check hitcheck 0
execute if entity @e[tag=atker,tag=selfhiter,limit=1] if score @s pid = #atker pid run scoreboard players set #check hitcheck 1
execute if score #check hitcheck matches 1 run function ut:move/counter/check
execute if score #check hitcheck matches 2 run function ut:move/dummy_bullet_mech/hit