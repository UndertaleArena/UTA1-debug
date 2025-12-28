#By Nebulirion

tag @s remove green_flame_target

scoreboard players set #check hitcheck 1
execute if score #check hitcheck matches 1 run function ut:move/hit_list/check
execute if score #check hitcheck matches 1 if score @s tid = #atker tid run scoreboard players add #check hitcheck 1
execute if score #check hitcheck matches 1 run function ut:move/counter/check
execute if score #check hitcheck matches 2 run function ut:move/green_flame/hit