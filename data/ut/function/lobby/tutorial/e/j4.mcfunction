#By Nebulirion

tellraw @a[tag=tut_p] ["",{"translate":"pfx.flowey"},{"translate":"tut.j4"}]


scoreboard players set @a[tag=tut_p] will 90
function ut:lobby/tutorial/e/sound
execute if score tut_state info matches 1 run schedule function ut:lobby/tutorial/e/j5 3s