#By Nebulirion while in class (im paying attention so don't judge me ok)

execute unless score @s frog_talk matches 52..60 run scoreboard players set @s frog_talk 51
execute if score @s frog_talk matches 58 run scoreboard players set @s frog_talk 55
scoreboard players add @s frog_talk 1

##GREETING
execute if score @s frog_talk matches 52..54 run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 0.2 1.9 0.02

execute if score @s[tag=!cev] frog_talk matches 52 run tellraw @s ["",{"translate":"frog.fourth.3a"}]
execute if score @s[tag=cev] frog_talk matches 52 run tellraw @s ["",{"translate":"frog.fourth.5b"}]
execute if score @s[tag=cev] frog_talk matches 53 run tellraw @s ["",{"translate":"frog.fourth.4a"}]
execute if score @s[tag=cev] frog_talk matches 54 run tellraw @s ["",{"translate":"frog.fourth.5a"}]

tag @s add cev