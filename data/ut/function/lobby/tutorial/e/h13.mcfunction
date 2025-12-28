#By Nebulirion

tellraw @a[tag=tut_p,scores={hpdis=20}] ["",{"translate":"pfx.flowey"},{"translate":"tut.h13.1"}]

tellraw @a[tag=tut_p,scores={hpdis=10..19}] ["",{"translate":"pfx.flowey"},{"translate":"tut.h13.2"}]

tellraw @a[tag=tut_p,scores={hpdis=0..9}] ["",{"translate":"pfx.flowey"},{"translate":"tut.h13.3"}]


scoreboard players set flowey tutorial 12
function ut:lobby/tutorial/e/sounda
execute if score tut_state info matches 1 run schedule function ut:lobby/tutorial/e/i1 1s