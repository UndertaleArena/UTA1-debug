#By Nebulirion

tellraw @a[tag=tut_p] ["",{"translate":"pfx.flowey"},{"translate":"tut.e1"}]


function ut:lobby/tutorial/e/sound
scoreboard players set flowey tutorial 6

execute if score tut_state info matches 1 run schedule function ut:lobby/tutorial/e/e2 2s