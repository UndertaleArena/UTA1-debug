#By Nebulirion

execute unless score @s frog_talk matches 98..99 run scoreboard players set @s frog_talk 98
execute positioned as @e[tag=frog_main,limit=1] align xyz unless entity @s[dx=0,dy=3,dz=0] run scoreboard players set @s frog_talk 98

###GREETING
execute if score @s frog_talk matches 98 run tellraw @s ["",{"translate":"pfx.frog"},{"translate":"frog.info.6"}]
execute if score @s frog_talk matches 99 run tellraw @s ["",{"translate":"pfx.frog"},{"translate":"frog.info.6egg"}]

scoreboard players add @s frog_talk 1
