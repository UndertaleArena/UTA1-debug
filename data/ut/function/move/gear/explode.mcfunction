#By Nebulirion

scoreboard players operation #atker pid = @s pid
scoreboard players operation #atker tid = @s tid
scoreboard players operation #damage damage = @s damage

execute positioned ~ ~-1 ~ as @a[distance=..3,tag=playing,tag=!untargetable] unless score @s tid = #atker tid run function ut:move/gear/explode_hitcheck

function ut:move/void/vapor_check
execute if score #isVoid store matches 0 run function ut:move/gear/explode_success

function ut:void