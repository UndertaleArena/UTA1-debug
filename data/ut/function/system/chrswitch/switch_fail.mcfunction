#By Nebulirion

execute at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 1.6
data modify storage ut:temp name set from entity @s Inventory[{Slot:103b}].components."minecraft:custom_name"
tellraw @s ["",{"translate":"pfx.game"},{"translate":"chr.alreadyam","with":[{"nbt":"name","storage":"ut:temp","interpret":true,"bold":false}]}]
function ut:system/chrswitch/inventory