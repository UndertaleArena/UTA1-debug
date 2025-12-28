#By Nebulirion

execute at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 0.75 2 0.75

scoreboard players set @s frogfilter 0

tellraw @s ["",{"translate":"frog.filter.2"}]
