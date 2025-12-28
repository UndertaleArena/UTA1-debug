#By Nebulirion while in class (im paying attention so don't judge me ok)

scoreboard players set @s frog_talk 51

##GREETING
execute if score @s frog_talk matches 51 run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 0.2 1.9 0.02

execute if score @s[tag=!cev] frog_talk matches 51 run tellraw @s ["",{"translate":"frog.fourth.3b"}]
execute if score @s[tag=cev] frog_talk matches 51 run tellraw @s ["",{"translate":"frog.fourth.4b"}]

tag @s remove cev