#By Nebulirion

tellraw @a[tag=ray_user] ["",{"translate":"pfx.warning"},{"translate":"set.needadmin"}]
execute at @a[tag=ray_user] run playsound minecraft:block.note_block.pling player @a[tag=ray_user] ~ ~ ~ 0.5 1