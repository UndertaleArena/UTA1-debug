#Original By Nebulirion, edited by SY

#get score
execute store result score #temp store run data get block ~ ~ ~ Items[0].components."minecraft:custom_data".state 1

#check state to replace block
execute if score #temp store matches 1..15 run function ut:move/delete/vine_restore/1_15
execute if score #temp store matches 16..31 run function ut:move/delete/vine_restore/16_31