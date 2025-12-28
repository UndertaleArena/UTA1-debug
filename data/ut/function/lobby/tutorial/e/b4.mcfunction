#By Nebulirion

tellraw @a[tag=tut_p] ["",{"translate":"pfx.flowey"},{"translate":"tut.b4"}]

function ut:lobby/tutorial/e/sound
scoreboard players set flowey tutorial 2
tag @e[tag=ray_flowey] add active
execute if score tut_state info matches 1 run schedule function ut:lobby/tutorial/e/b4e2 3s
execute if score tut_state info matches 1 run schedule function ut:lobby/tutorial/e/b4e3 6s
execute if score tut_state info matches 1 run schedule function ut:lobby/tutorial/e/b4e4 16s
execute if score tut_state info matches 1 run schedule function ut:lobby/tutorial/e/c1 18s