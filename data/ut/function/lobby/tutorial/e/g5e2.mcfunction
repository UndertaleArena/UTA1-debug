#By Nebulirion

tellraw @a[tag=tut_p] ["",{"translate":"pfx.flowey"},{"translate":"tut.g5e2"}]

execute if score tut_state info matches 1 run schedule function ut:lobby/tutorial/e/g5s1 3s

scoreboard players set flowey tutorial 10
function ut:lobby/tutorial/e/sound
execute if score tut_state info matches 1 run schedule function ut:lobby/tutorial/e/g6 14s