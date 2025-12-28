# setup general item data
data modify block 255 0 255 Items set value []
item replace block 255 0 255 container.0 with minecraft:carrot_on_a_stick[custom_data={spare:1b}]
item modify block 255 0 255 container.0 ut:no_melee

# check player type
execute if entity @s[tag=!nomercy_user] run function ut:move/effect/nomercy/give/hiter
execute if entity @s[tag=nomercy_user] run function ut:move/effect/nomercy/give/user

# give back via shulker method
execute unless items entity @s hotbar.8 * run loot replace entity @s hotbar.8 1 mine 255 0 255 minecraft:diamond_pickaxe[custom_data={isShulkerMarker:1b}]
execute if items entity @s hotbar.8 * unless items entity @s container.* #ut:spare[custom_data~{spare:1b}] run loot give @s mine 255 0 255 minecraft:diamond_pickaxe[custom_data={isShulkerMarker:1b}]