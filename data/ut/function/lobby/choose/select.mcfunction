#By Nebulirion

execute if entity @s[tag=default_select] run function ut:choose/from_lobby

execute if entity @s[tag=surprise_select] run function ut:lobby/choose/surprise_dummy
execute if entity @s[tag=soon_select] as @a[tag=ray_user] run function ut:choose/soon
execute if entity @s[tag=creator_as] run function ut:lobby/credit/h/big

execute if entity @s[tag=!creator_as,tag=!soon_select] as @a[tag=ray_user] run scoreboard players operation @s last_chr = @s chr

execute as @a[tag=ray_user] at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2
