#By Nebulirion

execute unless score @s life matches 33.. run playsound minecraft:entity.skeleton.shoot player @a ~ ~ ~ 1 0.4
execute unless score @s life matches 33.. run particle item{item:bone_block} ~ ~ ~ 0.5 0.3 0.5 0.2 150 normal @a[scores={Q=2..}]
tag @s add waitingbone