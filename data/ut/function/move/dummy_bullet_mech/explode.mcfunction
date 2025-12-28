#By Nebulirion

playsound minecraft:entity.generic.explode player @a ~ ~ ~ 0.4 1.2
execute positioned ~ ~ ~ run particle minecraft:explosion ~ ~ ~ 0 0 0 0 0 force @a[scores={Q=1..}]

tag @s add atker
tag @s remove blockable

scoreboard players operation #atker pid = @s pid
scoreboard players operation #atker tid = @s tid
scoreboard players operation #damage damage = @s damage

execute positioned ~-.75 ~-.75 ~-.75 as @a[dx=0.5,dy=0.5,dz=0.5,tag=playing,tag=!untargetable] positioned ~.75 ~.75 ~.75 run function ut:move/dummy_bullet_mech/explode_hitcheck

tag @s remove atker

function ut:void