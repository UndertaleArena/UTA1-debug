#Original By Nebulirion, edited by SY

#bonus: restores dogs
execute as @e[type=marker,tag=dog_bridge] at @s run function ut:move/dog/ai/t1/v1/bridge_restore

#pre restore
execute if entity @e[tag=area_store] run function ut:move/delete/restore_loop

#temp clear
execute as @e[tag=gerson] at @s unless block ~ ~ ~ #ut:trans run tp @s 2312.5 30 758.5