#By Nebulirion

tellraw @a[tag=tut_p] ["",{"translate":"pfx.flowey"},{"translate":"tut.h7"}]

function ut:lobby/tutorial/e/soundt
execute if score tut_state info matches 1 run schedule function ut:lobby/tutorial/e/h8 2s