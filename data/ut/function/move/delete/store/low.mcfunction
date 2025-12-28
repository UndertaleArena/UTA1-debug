#Original By Nebulirion, edited by SY

#init check score
##store score
execute store result score @s y_pos run data get entity @s Pos[1] 100
##ray score count
scoreboard players set @s ray_distance 24
##copy position top
scoreboard players set #max y_pos 600
scoreboard players operation #max y_pos += @s y_pos
##init low and air_check
scoreboard players operation #min y_pos = @s y_pos
scoreboard players set #check store 666
##init zero count
scoreboard players set #zero store 0

#start check loop
execute positioned ~ ~-1 ~ run function ut:move/delete/store/low_loop

#store the data score
function ut:move/delete/store/data