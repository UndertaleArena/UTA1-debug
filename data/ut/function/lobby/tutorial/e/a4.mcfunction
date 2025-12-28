#By Nebulirion

tellraw @a[tag=tut_p,scores={tutorial=..2}] ["",{"translate":"pfx.flowey"},{"translate":"tut.a4.1"}]
tellraw @a[tag=tut_p,scores={tutorial=3..}] ["",{"translate":"pfx.flowey"},{"translate":"tut.a4.2"}]

function ut:lobby/tutorial/e/sound
execute if score tut_state info matches 1 run schedule function ut:lobby/tutorial/e/a5 2s