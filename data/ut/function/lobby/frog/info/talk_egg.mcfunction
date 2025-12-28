#By Nebulirion while in class (im paying attention so don't judge me ok)

execute unless score @s frog_talk matches 80..88 run scoreboard players set @s frog_talk 80
scoreboard players add @s frog_talk 1

scoreboard players set @s unloadtime 12

###GREETING
execute if score @s[tag=!pinky] frog_talk matches 81 run tellraw @s ["",{"translate":"pfx.frog"},{"translate":"frog.info.7"}]
execute if score @s[tag=!pinky] frog_talk matches 82 run tellraw @s ["",{"translate":"pfx.frog"},{"translate":"frog.info.8"}]
execute if score @s[tag=pinky] frog_talk matches 81 run tellraw @s ["",{"translate":"pfx.frog"},{"translate":"frog.info.7b"}]
execute if score @s[tag=pinky] frog_talk matches 82 run tellraw @s ["",{"translate":"pfx.frog"},{"translate":"frog.info.8b"}]

execute if score @s frog_talk matches 83 run tag @s[tag=pinky] add pinky_had
execute if score @s frog_talk matches 83 run tag @s add pinky
execute if score @s frog_talk matches 83 run tag @s[tag=pinky_had] remove pinky
execute if score @s frog_talk matches 83 run tag @s[tag=pinky_had] remove pinky_had

execute if score @s frog_talk matches 83 run tellraw @s ["",{"translate":"pfx.frog"},{"translate":"frog.info.9"}]

execute if score @s frog_talk matches 80..83 run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 0.75 2 0.75