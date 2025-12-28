#hihi this is neb

scoreboard players set min random 1
scoreboard players set max random 9

item replace entity 0-0-0-0-1 container.0 with mycelium
item modify entity 0-0-0-0-1 container.0 ut:random
execute store result score #butsoul soul run data get entity 0-0-0-0-1 Item.components."minecraft:attribute_modifiers".modifiers[0].amount

execute if score #butsoul soul matches 1 run tellraw @s [{"translate":"pfx.tut"},{"translate":"stut.r8.e2.2","with":[{"translate": "tem.1", "color":"red"}]}]
execute if score #butsoul soul matches 2 run tellraw @s [{"translate":"pfx.tut"},{"translate":"stut.r8.e2.2","with":[{"translate": "tem.2", "color":"aqua"}]}]
execute if score #butsoul soul matches 3 run tellraw @s [{"translate":"pfx.tut"},{"translate":"stut.r8.e2.2","with":[{"translate": "tem.3", "color":"gold"}]}]
execute if score #butsoul soul matches 4 run tellraw @s [{"translate":"pfx.tut"},{"translate":"stut.r8.e2.2","with":[{"translate": "tem.4", "color":"blue"}]}]
execute if score #butsoul soul matches 5 run tellraw @s [{"translate":"pfx.tut"},{"translate":"stut.r8.e2.2","with":[{"translate": "tem.5", "color":"yellow"}]}]
execute if score #butsoul soul matches 6 run tellraw @s [{"translate":"pfx.tut"},{"translate":"stut.r8.e2.2","with":[{"translate": "tem.6", "color":"light_purple"}]}]
execute if score #butsoul soul matches 7 run tellraw @s [{"translate":"pfx.tut"},{"translate":"stut.r8.e2.2","with":[{"translate": "tem.7", "color":"green"}]}]
execute if score #butsoul soul matches 8 run tellraw @s [{"translate":"pfx.tut"},{"translate":"stut.r8.e2.2","with":[{"translate": "tem.8", "color":"white"}]}]

execute if score #butsoul soul matches 1 run tellraw @s [{"translate":"stut.r8.e2.s1"}]
execute if score #butsoul soul matches 2 run tellraw @s [{"translate":"stut.r8.e2.s2"}]
execute if score #butsoul soul matches 3 run tellraw @s [{"translate":"stut.r8.e2.s3"}]
execute if score #butsoul soul matches 4 run tellraw @s [{"translate":"stut.r8.e2.s4"}]
execute if score #butsoul soul matches 5 run tellraw @s [{"translate":"stut.r8.e2.s5"}]
execute if score #butsoul soul matches 6 run tellraw @s [{"translate":"stut.r8.e2.s6"}]
execute if score #butsoul soul matches 7 run tellraw @s [{"translate":"stut.r8.e2.s7"}]
execute if score #butsoul soul matches 8 run tellraw @s [{"translate":"stut.r8.e2.s8"}]