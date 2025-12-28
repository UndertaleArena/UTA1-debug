#By Nebulirion

data modify block 255 0 255 Items set value [{Slot:0b,id:"minecraft:carrot_on_a_stick",count:1b}]

data modify storage ut:temp UUID set from entity @s UUID
scoreboard players set -success store 1
execute as @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}] run function ut:player/nodrop/find_drop_item

function ut:player/nodrop/return