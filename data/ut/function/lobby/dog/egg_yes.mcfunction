#By Nebulirion

particle minecraft:witch ~ ~1 ~ 0.2 0.5 0.2 0 100
tp @s 280.5 141 1280.5 90 0
playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 1
execute unless block 278 143 1297 potted_blue_orchid unless block 282 136 1268 potted_blue_orchid as @a unless data entity @s Inventory[{id:"minecraft:blue_orchid"}] run setblock 282 136 1268 potted_blue_orchid
kill @e[type=item,nbt={Item:{id:"minecraft:blue_orchid"}}]

function ut:move/bark/yes