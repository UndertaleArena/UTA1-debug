#By Nebulirion

playsound minecraft:item.totem.use player @a ~ ~ ~ 0.3 2
particle end_rod ~ ~.3 ~ 0.3 0 0.3 0.1 100

function ut:move/effect/soul/give

execute store result score #soultype store run data get entity @s SelectedItem.components."minecraft:custom_data".soultype

execute if score #soultype store matches 1 run function ut:move/soul/determination/use
execute if score #soultype store matches 2 run function ut:move/soul/patience/use
execute if score #soultype store matches 3 run function ut:move/soul/bravery/use
execute if score #soultype store matches 4 run function ut:move/soul/integrity/use
execute if score #soultype store matches 5 run function ut:move/soul/justice/use
execute if score #soultype store matches 6 run function ut:move/soul/perseverance/use
execute if score #soultype store matches 7 run function ut:move/soul/kindness/use
execute if score #soultype store matches 8 run function ut:move/soul/monster/use

function ut:move/soul/cast

item replace entity @s weapon.mainhand with air
execute store result score @s soul_count run clear @s carrot_on_a_stick[custom_data~{soul:1b}] 0

execute if items entity @s inventory.* minecraft:carrot_on_a_stick[custom_data~{soul:1b}] run function ut:move/soul/use_refill