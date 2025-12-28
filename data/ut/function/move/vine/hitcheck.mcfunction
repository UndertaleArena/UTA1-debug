#By Nebulirion

tag @s remove vine_target

scoreboard players set #check hitcheck 0
execute if score @s tid = #atker tid run scoreboard players set #check hitcheck -1

execute if score #check hitcheck matches 0 run function ut:move/counter/check
execute if score #check hitcheck matches 1 run function ut:move/vine/hit