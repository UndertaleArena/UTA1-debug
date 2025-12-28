#By Nebulirion

execute if score @s chr matches 16 run scoreboard players set @s chr -4
execute if score @s chr matches 6 run scoreboard players set @s chr 16
execute if score @s chr matches -4 run scoreboard players set @s chr 6

function ut:choose/storage

scoreboard players operation @s last_chr = @s chr
tellraw @s ["",{"translate":"pfx.info"},{"translate":"cht.chr3","with":[{"bold":true,"storage":"ut:chrs","nbt":"Temp.Name","color":"yellow"}]}]

scoreboard players set @s unloadtime 30
playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2
particle poof ~ ~1 ~ 0.25 0.35 0.25 .02 20 normal @a[scores={Q=1..}]