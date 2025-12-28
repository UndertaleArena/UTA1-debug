#By Nebulirion

particle minecraft:sneeze ~ ~1.3 ~ .25 .4 .25 0.05 100 force @a[scores={Q=2..}]
playsound minecraft:block.conduit.activate player @a ~ ~ ~ 2 2

attribute @s generic.movement_speed modifier add injectspeed 0.5 add_multiplied_total

scoreboard players add @s[tag=!injected] move_loop 1

title @s title ["",{"translate":"sts.inject"}]
title @s times 5 10 5
scoreboard players set @s title_timer 15

scoreboard players operation @s mp > @s mpmax

scoreboard players set @s inject_timer 100
tag @s add injected

function ut:move/_buffed/give_status