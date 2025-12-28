#By Nebulirion

tellraw @s ["",{"translate":"pfx.credit"},{"translate":"cre.toofar"}]
execute at @a[tag=ray_user] run playsound minecraft:block.note_block.pling player @a[tag=ray_user] ~ ~ ~ 0.5 1
