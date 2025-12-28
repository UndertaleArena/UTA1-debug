#By Nebulirion

tag @s add tr_soul
execute as @a[tag=ray_user] if score @s tid = @e[tag=tr_soul,limit=1] ptid run tellraw @s ["",{"translate":"pfx.info"},{"translate":"cht.tj9"}]
execute as @a[tag=ray_user] unless score @s tid = @e[tag=tr_soul,limit=1] ptid run function ut:lobby/soul/join
tag @s remove tr_soul