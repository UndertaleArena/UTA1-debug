#by Nebulirion

data modify block 255 0 255 Items set value []
data modify storage ut:temp OFFITEM set from entity @s Inventory[{Slot:-106b}]
data modify storage ut:temp OFFITEM.Slot set value 0b
data modify block 255 0 255 Items append from storage ut:temp OFFITEM

function ut:player/nooffhand/return
item replace entity @s weapon.offhand with air

#default
execute if entity @s[tag=passive_default] run function ut:move/hand/toggle