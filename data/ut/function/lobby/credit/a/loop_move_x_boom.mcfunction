#By Nebulirion

playsound entity.generic.explode player @a[tag=credit_p] ~ ~ ~ 0.8 1.8
particle explosion ~ ~.3 ~ 0.5 0.5 0.5 0 3 force @a[tag=credit_p,scores={Q=1..}]

tag @s add atker
execute unless entity @s[team=touched] positioned ~-1.5 ~ ~-1.5 as @a[dx=2,dy=2,dz=2,tag=credit_p,limit=1] run function ut:lobby/credit/a/hit
tag @s remove atker

tp @s ~ ~-10 ~
function ut:lobby/credit/a/loop_end