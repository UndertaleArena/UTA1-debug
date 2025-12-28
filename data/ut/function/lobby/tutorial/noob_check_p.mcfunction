#be like temmie

execute unless score @s tutorial matches 1.. run function ut:lobby/tutorial/noob_check_new

execute store result score @s soul run clear @s carrot_on_a_stick[minecraft:custom_data~{selector:1b}] 0
execute if score @s soul matches 0 run function ut:lobby/tutorial/noob_check_lost
