#By Nebulirion

tellraw @a[tag=tut_p] ["",{"translate":"pfx.flowey"},{"translate":"tut.j6e1"}]

function ut:lobby/tutorial/e/sound
execute if score tut_state info matches 1 run schedule function ut:lobby/tutorial/e/j6e2 3s