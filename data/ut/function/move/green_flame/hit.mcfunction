#By Nebulirion

scoreboard players operation #target pid = @s pid
execute as @e[type=armor_stand,tag=atker,limit=1] run function ut:move/hit_list/register

execute if score @s tid = #atker tid run function ut:move/green_flame/hit_ally
execute unless score @s tid = #atker tid run function ut:move/green_flame/hit_enemy