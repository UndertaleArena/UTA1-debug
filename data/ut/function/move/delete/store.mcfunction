#Original By Nebulirion, edited by SY
##finding the best low point
##get the structure size
##and copy it

#check the y range
function ut:move/delete/store/low

#check storage range
##get the small range
execute store result score t y_pos run data get entity @s data.range 1
##lower extra
execute unless score #min y_pos matches ..100 run scoreboard players add t y_pos 1
execute unless score #min y_pos matches ..100 run scoreboard players remove #min y_pos 100
##upper safety
#scoreboard players operation #max y_pos = #temp store
scoreboard players add t y_pos 1
##range change
execute store result entity @s data.storange int 1 run scoreboard players get t y_pos

#vine detection
execute store result entity @s Pos[1] double 0.01 run scoreboard players get #min y_pos
scoreboard players set @s ray_distance 0
execute at @s run function ut:move/delete/vine_replace_loop

tellraw @a[tag=detail,tag=debug] ["Storage Range: ",{"score":{"name":"t","objective":"y_pos"}}]

#do copy
tellraw @a[tag=detail,tag=debug] ["Y Before Copy: ",{"nbt":"Pos[1]","entity":"@s"}]
execute at @s run function ut:move/delete/store_copy