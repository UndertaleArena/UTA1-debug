#Originally made by Nebulirion, edited by SY91419

#life adding
scoreboard players add @s life 1

#state change
execute if score @s life matches 100.. run function ut:lobby/minis/dummy/move/dummy/jump/fall
