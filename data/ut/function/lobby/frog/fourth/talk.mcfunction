#By Nebulirion while in class (im paying attention so don't judge me ok)

scoreboard players set @s ray_distance -625

execute unless score @s frog_talk matches 40..49 run scoreboard players set @s frog_talk 39
scoreboard players add @s frog_talk 1

scoreboard players set @s unloadtime 8

##GREETING
execute if score @s frog_talk matches 40 run tellraw @s ["",{"translate":"pfx.frog"},{"translate":"frog.fourth.0"}]
execute if score @s[tag=!cev] frog_talk matches 41 run tellraw @s ["",{"translate":"frog.fourth.1a"}]
execute if score @s[tag=cev] frog_talk matches 41 run tellraw @s ["",{"translate":"frog.fourth.1b"}]
execute if score @s[tag=!cev] frog_talk matches 42 run tellraw @s ["",{"translate":"frog.fourth.2a"}]
execute if score @s[tag=cev] frog_talk matches 42 run tellraw @s ["",{"translate":"frog.fourth.2b"}]
execute if score @s frog_talk matches 42 run function ut:lobby/frog/fourth/talk_yesno

execute if score @s frog_talk matches 40..42 run playsound minecraft:block.note_block.pling player @a[tag=ray_user] ~ ~ ~ 0.2 1.9 0.02