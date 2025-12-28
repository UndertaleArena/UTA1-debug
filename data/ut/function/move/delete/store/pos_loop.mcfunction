#Original By Nebulirion, edited by SY

#forceload front
forceload add ~ ~-9 ~ ~-9

#id counting
scoreboard players add #temp store 1

###position test
#summon marker ~ ~ ~ {Tags:[temp,test,summon]}
#execute as @e[tag=temp] run tellraw @a[tag=debug] ["Area: ",{"score":{"name":"#temp","objective":"store"}},", Pos: ",{"nbt":"Pos","entity":"@s"}]
#kill @e[tag=summon]

#loop check
execute if block ~ 0 ~ bedrock positioned ~ ~ ~-9 run function ut:move/delete/store/pos_loop

execute unless block ~ 0 ~ bedrock run function ut:move/delete/store/pos_find