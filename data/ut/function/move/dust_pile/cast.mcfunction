#By Nebulirion

execute positioned ~ ~-1.4 ~ run function ut:move/rot/36
data merge entity @e[tag=summon,limit=1] {Tags:[dust_pile,summon,move,spc],NoGravity:1b,NoBasePlate:1b,Invisible:1b,Marker:0b,ArmorItems:[{},{},{},{}],HandItems:[{},{id:"cocoa_beans",count:1b}],CustomName:'{"translate": "as.dust"}',Pose:{Body:[280f,346f,24f],Head:[280f,0f,32f],LeftArm:[270f,0f,0f]},DisabledSlots:3620671}

data modify entity @e[limit=1,tag=summon] ArmorItems[3] set from entity @s Inventory[{Slot:103b}]
data modify entity @e[limit=1,tag=summon] ArmorItems[2] set from entity @s Inventory[{Slot:102b}]

scoreboard players set #this lifetime 12000
scoreboard players operation #this pid = @s pid
scoreboard players operation #this tid = @s tid
scoreboard players add #aid aid 1

scoreboard players set @e[tag=summon,limit=1] offset 120

execute as @e[tag=summon,limit=1] positioned as @s run function ut:move/cast