#By Nebulirion

data modify block 255 0 255 Items set value []
loot replace block 255 0 255 container.0 loot ut:48
execute store result score rng store run data get block 255 0 255 Items[0].components."minecraft:attribute_modifiers".modifiers[0].amount

execute if score rng store matches ..4 run function ut:lobby/root/grow
execute if score rng store matches 40.. run scoreboard players add #price st_gold 1