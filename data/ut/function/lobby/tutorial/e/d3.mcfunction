#By Nebulirion

tellraw @a[tag=tut_p] ["",{"translate":"pfx.flowey"},{"translate":"tut.d3"}]

function ut:lobby/tutorial/e/sounde
execute if score tut_state info matches 1 run schedule function ut:lobby/tutorial/e/d4 3s