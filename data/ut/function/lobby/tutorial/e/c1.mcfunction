#By Nebulirion

tellraw @a[tag=tut_p] ["",{"translate":"pfx.flowey"},{"translate":"tut.c1"}]

function ut:lobby/tutorial/e/sound
scoreboard players set flowey tutorial 3
tag @a[tag=tut_nice] remove tut_nice
tag @e[tag=ray_flowey] remove active
execute if score tut_state info matches 1 run schedule function ut:lobby/tutorial/e/c2 3s