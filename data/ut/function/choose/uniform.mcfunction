###Generated from Nebulagen made By Nebulirion
#08/12/2020, 14:44:24

function ut:system/team/color

item replace block 255 0 255 container.0 from entity @s armor.legs
data modify block 255 0 255 Items[0].id set value "minecraft:leather_leggings"
execute store result block 255 0 255 Items[0].components."minecraft:dyed_color".rgb int 1 run scoreboard players get -color store
item replace entity @s armor.legs from block 255 0 255 container.0

item replace block 255 0 255 container.0 from entity @s armor.chest
data modify block 255 0 255 Items[0].id set value "minecraft:leather_chestplate"
execute store result block 255 0 255 Items[0].components."minecraft:dyed_color".rgb int 1 run scoreboard players get -color store
item replace entity @s armor.chest from block 255 0 255 container.0

playsound item.armor.equip_leather player @s ~ ~ ~ 2 1 