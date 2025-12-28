#By Nebulirion

tellraw @a[tag=ray_user] ["",{"translate":"pfx.flowey"},{"translate":"tut.b4e1"}]

execute as @a[tag=ray_user] at @s run playsound minecraft:entity.villager.celebrate player @s ~ ~ ~ 1.8 2

tag @a[tag=ray_user] add tut_nice
execute unless entity @a[tag=tut_p,tag=!tut_nice] run schedule function ut:lobby/tutorial/e/c1 2s