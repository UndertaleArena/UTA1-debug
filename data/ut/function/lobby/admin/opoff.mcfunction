#By Nebulirion

execute at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2
execute if score admin_mode info matches 0 run tellraw @s ["",{"translate":"pfx.settings"},{"translate":"set.admin4"}]
execute if score admin_mode info matches 1 run function ut:lobby/admin/op_trigger