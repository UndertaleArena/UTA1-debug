#By Nebulirion (They like drinking coke)

data modify block 255 0 255 Items set value [{Slot:0b,id:"minecraft:carrot_on_a_stick",count:1b}]

data modify storage ut:temp InvSave[0].Slot set value 0b
data modify block 255 0 255 Items[0] set from storage ut:temp InvSave[0]

function ut:player/nodrop/return

data remove storage ut:temp InvSave[0]
execute if data storage ut:temp InvSave[0] run function ut:system/chrswitch/inventory_save