#By Nebulirion

tag @s remove pie

playsound minecraft:entity.generic.eat player @a ~ ~ ~ 2 0.8
particle item{item:pumpkin_pie} ^ ^ ^ 1.2 1.2 1.2 .1 250 normal @a[scores={Q=2..}]

tag @s add atker
scoreboard players operation #atker pid = @s pid
scoreboard players operation #atker tid = @s tid
scoreboard players operation #damage damage = @s damage
execute positioned ~ ~ ~ as @a[tag=playing,tag=!untargetable,distance=..4] run function ut:move/pie/hit
tag @s remove atker

function ut:void