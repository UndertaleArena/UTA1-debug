#By Nebulirion

effect give @s minecraft:jump_boost 1 26 true
execute store result score #upmotion store run data get entity @s Motion[1] 10000
execute if score #upmotion store matches 1.. if block ~ ~3 ~ white_stained_glass run effect give @s levitation 1 20 true
execute if score #upmotion store matches 1.. if block ~ ~3 ~ white_stained_glass run tp @s 196.5 207 1281.5 ~ ~