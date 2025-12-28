#By Nebulirion

execute at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 0.75 2 0.75

scoreboard players operation @s frogfilter = @s trigger
scoreboard players remove @s frogfilter 100

scoreboard players operation -modeid store = @s frogfilter
scoreboard players remove -modeid store 50

execute if score -modeid store matches 1 run data modify storage ut:modes Temp set from storage ut:modes Data[1]
execute if score -modeid store matches 2 run data modify storage ut:modes Temp set from storage ut:modes Data[2]
execute if score -modeid store matches 3 run data modify storage ut:modes Temp set from storage ut:modes Data[3]
execute if score -modeid store matches 4 run data modify storage ut:modes Temp set from storage ut:modes Data[4]
execute if score -modeid store matches 5 run data modify storage ut:modes Temp set from storage ut:modes Data[5]
execute if score -modeid store matches 6 run data modify storage ut:modes Temp set from storage ut:modes Data[6]
execute if score -modeid store matches 7 run data modify storage ut:modes Temp set from storage ut:modes Data[7]

tellraw @s ["",{"translate":"frog.filter.3","with":[{"nbt":"Temp.Name","storage": "ut:modes", "interpret": true, "color":"yellow"}]}]
