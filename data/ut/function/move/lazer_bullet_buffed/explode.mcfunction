#By Nebulirion

playsound minecraft:entity.vex.hurt player @a ~ ~ ~ 2 1.1
playsound minecraft:entity.bee.pollinate player @a ~ ~ ~ 2 1

execute positioned ~ ~ ~ run particle dust{color:[1.0,0.357,0.882],scale:1.6} ~ ~ ~ .4 .4 .4 1 40 force @a[scores={Q=1..}]
#execute positioned ~ ~ ~ run particle minecraft:enchanted_hit ~ ~ ~ .4 .4 .4 .5 30 force @a[scores={Q=1..}]
execute positioned ~ ~ ~ run particle minecraft:firework ~ ~ ~ .3 .3 .3 .1 4 force @a[scores={Q=2..}]
execute positioned ~ ~ ~ run particle minecraft:firework ~ ~ ~ .3 .3 .3 .2 5 force @a[scores={Q=3..}]

tag @s add atker
tag @s remove blockable

scoreboard players operation #atker pid = @s pid
scoreboard players operation #atker tid = @s tid
scoreboard players operation #damage damage = @s damage
scoreboard players operation #damage damage = @s damage

execute positioned ~-.75 ~-.75 ~-.75 as @a[dx=0.5,dy=0.5,dz=0.5,tag=playing,tag=!untargetable] positioned ~.75 ~.75 ~.75 run function ut:move/lazer_bullet_buffed/explode_hitcheck

tag @s remove atker

function ut:void