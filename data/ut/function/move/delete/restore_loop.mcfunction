#Original By Nebulirion, edited by SY

#find the latest
scoreboard players set #temp store 0
execute as @e[tag=area_store] run function ut:move/delete/restore/latest_find

#the entity stuff
execute as @e[tag=area_store,tag=store_latest] at @s run function ut:move/delete/restore/restore

#loop check
execute if entity @e[tag=area_store] run function ut:move/delete/restore_loop