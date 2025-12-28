#By SY91419
#PRAISE THE TEM

playsound entity.cat.ambient player @s ~ ~ ~ 1 1

execute if data entity @s SelectedItem.components."minecraft:custom_data".bark run tag @s add offering

execute if entity @s[tag=offering] run tellraw @s "* U offerd da artifak 2 da TEM statu."
execute if entity @s[tag=offering] run item replace entity @s weapon with air

execute if entity @s[tag=offering,tag=!vip] run tellraw @s "* U r filLeD wiTh da PAWA of VIP!!"
execute if entity @s[tag=offering,tag=!vip] run tag @s add vip

tag @s remove offering