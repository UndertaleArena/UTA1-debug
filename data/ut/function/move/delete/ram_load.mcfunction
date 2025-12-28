#Original By Nebulirion, edited by SY

#score setting
scoreboard players add #temp store 1

#forceload
forceload add ~ ~ ~ ~

#loop check
execute if score #temp store < ram_size store positioned ~ ~ ~-9 run function ut:move/delete/ram_load