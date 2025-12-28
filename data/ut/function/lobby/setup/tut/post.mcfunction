# original by Nebulirion, edited by SY91419

# position config
execute positioned as @s run tp @s ~ ~ ~ ~ ~
# data changes
execute unless items entity @s armor.head * run item replace entity @s armor.head with mushroom_stew
data modify entity @s DisabledSlots set value 3620671
# tag removal
tag @s remove summon