#By Nebulirion

summon minecraft:armor_stand ~ ~ ~ {Tags:[spared_soul,summon,move,spc],NoGravity:1b,NoBasePlate:1b,Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{}],HandItems:[{},{}],CustomName:'{"translate": "as.spare"}',DisabledSlots:3620671}

data modify entity @e[limit=1,tag=summon] ArmorItems[3] set from entity @s Inventory[{Slot:103b}]
data modify entity @e[limit=1,tag=summon] ArmorItems[2] set from entity @s Inventory[{Slot:102b}]
data modify entity @e[limit=1,tag=summon] ArmorItems[1] set from entity @s Inventory[{Slot:101b}]
data modify entity @e[limit=1,tag=summon] ArmorItems[0] set from entity @s Inventory[{Slot:100b}]
data modify entity @e[limit=1,tag=summon] HandItems[0] set from entity @s SelectedItem

scoreboard players set #this lifetime 60
scoreboard players operation #this pid = @s pid
scoreboard players operation #this tid = @s tid
scoreboard players add #aid aid 1

execute as @e[tag=summon,limit=1] positioned as @s run function ut:move/cast