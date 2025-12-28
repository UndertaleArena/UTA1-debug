#By Nebulirion


function ut:choose/_papyrus
tellraw @s ["",{"translate":"pfx.info"},{"translate":"cht.chr3","with":[{"selector":"@e[tag=tut_papyrus]","color":"yellow"}]}]

item replace entity @s container.4 with air
item replace entity @s container.8 with air
function ut:lobby/tutorial/button/give

execute at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2