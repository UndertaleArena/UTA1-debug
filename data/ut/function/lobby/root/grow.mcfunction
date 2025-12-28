#By Nebulirion

data modify block 255 0 255 Items set value []
loot replace block 255 0 255 container.0 loot ut:48
execute store result score rng store run data get block 255 0 255 Items[0].components."minecraft:attribute_modifiers".modifiers[0].amount

execute if block ~ ~ ~ black_concrete run setblock ~ ~ ~ green_concrete
execute if block ~ ~ ~ #ut:treeeeat run setblock ~ ~ ~ green_terracotta

scoreboard players set growyes store 0
execute if block ~ ~ ~ #ut:treeee run scoreboard players set growyes store 1
execute unless score growyes store matches 1 run scoreboard players set rng store 0

execute unless score @s root matches 2.. if score rng store matches ..12 run scoreboard players set rng store 13

execute if score rng store matches 13.. run tp @s ~ ~-1 ~
execute if score rng store matches 1..2 run tp @s ~ ~-1 ~1
execute if score rng store matches 3..4 run tp @s ~ ~-1 ~-1
execute if score rng store matches 5..6 run tp @s ~1 ~-1 ~
execute if score rng store matches 7..8 run tp @s ~-1 ~-1 ~
execute if score rng store matches 9 run tp @s ~1 ~-1 ~1
execute if score rng store matches 10 run tp @s ~1 ~-1 ~-1
execute if score rng store matches 11 run tp @s ~-1 ~-1 ~1
execute if score rng store matches 12 run tp @s ~-1 ~-1 ~-1

execute if score growyes store matches 1 run scoreboard players add @s root 1
execute if score growyes store matches 1 run scoreboard players add OVERGROWTH root 1