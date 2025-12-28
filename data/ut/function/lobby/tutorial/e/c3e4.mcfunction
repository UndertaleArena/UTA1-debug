#By Nebulirion

execute if score flowey tutorial matches 4 run tellraw @a[tag=tut_p,tag=!tut_nice] ["",{"translate":"pfx.flowey"},{"translate":"tut.c3e4"}]

execute if score flowey tutorial matches 4 run function ut:lobby/tutorial/e/sounda2

execute if score flowey tutorial matches 4 run function ut:lobby/tutorial/e/c3e5