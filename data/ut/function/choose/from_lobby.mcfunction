#By Nebulirion

scoreboard players operation @a[tag=ray_user,limit=1] chr = @s chr
scoreboard players operation @a[tag=ray_user,limit=1] last_chr = @s chr
execute as @a[tag=ray_user,limit=1] run function ut:choose/storage

tellraw @a[tag=ray_user] ["",{"translate":"pfx.info"},{"translate":"cht.chr3","with":[{"selector":"@s","color":"yellow"}]}]