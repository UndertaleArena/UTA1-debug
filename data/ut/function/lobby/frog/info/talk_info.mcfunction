#By Nebulirion while in class (im paying attention so don't judge me ok)

execute unless score @s frog_talk matches 20..25 run scoreboard players set @s frog_talk 19
scoreboard players add @s frog_talk 1

###GREETING
execute if score @s frog_talk matches 20 run tellraw @s ["",{"translate":"pfx.frog"},{"translate":"frog.info.0"}]
execute if score @s frog_talk matches 21 run tellraw @s ["",{"translate":"pfx.frog"},{"translate":"frog.info.1"}]
execute if score @s frog_talk matches 22 run tellraw @s ["",{"translate":"pfx.frog"},{"translate":"frog.info.2"}]
execute if score @s frog_talk matches 23 run tellraw @s ["",{"translate":"pfx.frog"},{"translate":"frog.info.3"}]
execute if score @s frog_talk matches 24 run tellraw @s ["",{"translate":"pfx.frog"},{"translate":"frog.info.4"}]
execute if score @s frog_talk matches 25 run tellraw @s ["",{"translate":"pfx.frog"},{"translate":"frog.info.5"}]
execute if score @s frog_talk matches 25 run scoreboard players set @s frog 1