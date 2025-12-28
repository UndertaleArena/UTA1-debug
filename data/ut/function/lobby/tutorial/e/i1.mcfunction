#By Nebulirion

tellraw @a[tag=tut_p,scores={hpdis=20}] ["",{"translate":"pfx.flowey"},{"translate":"tut.i1.1"}]
tellraw @a[tag=tut_p,scores={hpdis=10..19}] ["",{"translate":"pfx.flowey"},{"translate":"tut.i1.2"}]
tellraw @a[tag=tut_p,scores={hpdis=0..9}] ["",{"translate":"pfx.flowey"},{"translate":"tut.i1.3"}]

function ut:lobby/tutorial/e/sound
execute if score tut_state info matches 1 run schedule function ut:lobby/tutorial/e/i2 3s