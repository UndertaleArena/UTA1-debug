#By Nebulirion

execute at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 0.75 2 0.75

scoreboard players operation @s frogfilter = @s trigger
scoreboard players remove @s frogfilter 100

scoreboard players operation -chr chr = @s frogfilter
function ut:init/storage_chr_load

tellraw @s ["",{"translate":"frog.filter.3","with":[{"nbt":"Temp.Name","storage": "ut:chrs", "color":"yellow"}]}]
