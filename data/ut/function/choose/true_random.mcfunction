###Generated from Nebulagen made By Nebulirion
#08/12/2020, 14:44:24

scoreboard players set -truerandom store 0
tag @s remove true_random

clear @s

tag @s add tobying
summon armor_stand ~ ~ ~ {Tags:[random5000,summon],Marker:1b}

scoreboard players set -tobying store 1
execute as @e[tag=random5000,limit=1] run function ut:choose/random_chr
data modify entity @e[tag=random5000,limit=1] ArmorItems[3] set from storage ut:chrs Temp.MpMove
item replace entity @s hotbar.0 from entity @e[tag=random5000,limit=1] armor.head
execute store result score @s mpmax run data get storage ut:chrs Temp.MpMax

scoreboard players operation -toby advancement = @e[tag=random5000,limit=1] chr

execute as @e[tag=random5000,limit=1] run function ut:choose/random_chr
data modify entity @e[tag=random5000,limit=1] ArmorItems[3] set from storage ut:chrs Temp.CdMove
item replace entity @s hotbar.1 from entity @e[tag=random5000,limit=1] armor.head

execute unless score -toby advancement = @e[tag=random5000,limit=1] chr run scoreboard players set -toby advancement 0

execute as @e[tag=random5000,limit=1] run function ut:choose/random_chr
data modify entity @e[tag=random5000,limit=1] ArmorItems[3] set from storage ut:chrs Temp.DtMove
item replace entity @s hotbar.2 from entity @e[tag=random5000,limit=1] armor.head
execute store result score @s dtmax run data get storage ut:chrs Temp.DtMax

execute unless score -toby advancement = @e[tag=random5000,limit=1] chr run scoreboard players set -toby advancement 0

execute as @e[tag=random5000,limit=1] run function ut:choose/random_chr
item replace block 255 0 255 container.21 with minecraft:leather_chestplate 1
data modify block 255 0 255 Items[{Slot:21b}].components set from storage ut:chrs Temp.ChestItem.components
data modify block 255 0 255 Items[{Slot:21b}].components."minecraft:dyed_color".rgb set value 16777215
scoreboard players set -tobying store 0

execute unless score -toby advancement = @e[tag=random5000,limit=1] chr run scoreboard players set -toby advancement 0

tag @s remove tobying
kill @e[tag=random5000]

item replace entity @s armor.chest from block 255 0 255 container.21

data modify block 255 0 255 Items set value []
item replace block 255 0 255 container.0 with minecraft:nether_brick
data modify block 255 0 255 Items[0].components set from storage ut:chrs Data[11].HeadItem.components
loot replace entity @s armor.head 1 mine 255 0 255 minecraft:diamond_pickaxe[custom_data={isShulkerMarker:1b}]
item replace block 255 0 255 container.0 with minecraft:leather_leggings
data modify block 255 0 255 Items[0].components set from storage ut:chrs Data[11].LegsItem.components
loot replace entity @s armor.legs 1 mine 255 0 255 minecraft:diamond_pickaxe[custom_data={isShulkerMarker:1b}]
item replace block 255 0 255 container.0 with minecraft:leather_boots
data modify block 255 0 255 Items[0].components set from storage ut:chrs Data[11].FeetItem.components
loot replace entity @s armor.feet 1 mine 255 0 255 minecraft:diamond_pickaxe[custom_data={isShulkerMarker:1b}]

scoreboard players set @s hpmax 2000
scoreboard players set @s speed 3

scoreboard players set @s chr 12
execute if entity @s[type=player] run function ut:choose/common

execute if score -toby advancement matches 1.. run advancement grant @s only ut:chr/tobyfox/sssecret

tellraw @s ["",{"translate":"pfx.info"},{"translate":"cht.chr4"}]

playsound minecraft:entity.wolf.ambient player @a ~ ~ ~ 2 1.5

clear @s carrot_on_a_stick[custom_data~{bark:1b}]