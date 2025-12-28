#By Nebulirion

execute unless score allow_cre info matches 1 run scoreboard players set allow_cre info 2
execute if score allow_cre info matches 1 run scoreboard players set allow_cre info 0
execute if score allow_cre info matches 2 run scoreboard players set allow_cre info 1

tag @a[tag=credit_p] add per_p
execute if score allow_cre info matches 0 run function ut:lobby/credit/end
execute if score allow_cre info matches 0 run tellraw @a[tag=per_p] ["",{"translate":"pfx.info"},{"translate":"set.cre3"}]
execute as @a[tag=per_p] at @s run playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 1
tag @a remove per_p

execute if score allow_cre info matches 0 run tellraw @s ["",{"translate":"pfx.settings"},{"translate":"set.cre0"}]
execute if score allow_cre info matches 1 run tellraw @s ["",{"translate":"pfx.settings"},{"translate":"set.cre1"}]