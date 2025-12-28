#By Nebulirion

particle minecraft:sneeze ~ ~1.3 ~ .25 .4 .25 0.05 2 force @a[scores={Q=1..}]

function ut:player/infight/use

function ut:move/effect/soul/bravery/loop

scoreboard players remove @s inject_timer 1
execute if score @s inject_timer matches ..0 run function ut:move/injection/self_stop
#