#By Nebulirion

playsound minecraft:entity.generic.explode player @a ~ ~ ~ 0.8 1.2
execute positioned ~ ~ ~ run particle minecraft:explosion ~ ~ ~ 0.5 0.5 0.5 0 5 force @a[scores={Q=1..}]

tag @s add atker

tag @s remove blockable

scoreboard players operation #atker pid = @s pid
scoreboard players operation #atker tid = @s tid
scoreboard players operation #damage damage = @s damage

execute as @e[distance=..3,tag=prj,tag=reflectable] unless score @s tid = #atker tid run function ut:move/bomb/explode_prj
execute positioned ~ ~-1 ~ as @a[distance=..3,tag=playing,tag=!untargetable] unless score @s tid = #atker tid run function ut:move/bomb/explode_hitcheck

tag @s remove atker

function ut:void