#Original By Nebulirion, edited by SY

##min for scan
##max for vine
##range for scan check and larger storange

#store the data
##min and max
execute store result entity @s data.min int 0.01 run scoreboard players get #min y_pos
execute store result entity @s data.max int 0.01 run scoreboard players get #max y_pos
scoreboard players remove #max y_pos 100
scoreboard players operation #temp store = #max y_pos

##range calculation
scoreboard players operation #max y_pos -= #min y_pos
scoreboard players add #max y_pos 100
execute store result entity @s data.range int 0.01 run scoreboard players get #max y_pos

#temp stuff for debugging
tellraw @a[tag=debug] ["Range: (",{"score":{"name":"#min","objective":"y_pos"}},"~",{"score":{"name":"#temp","objective":"store"}},"), range=",{"score":{"name":"#max","objective":"y_pos"}}]