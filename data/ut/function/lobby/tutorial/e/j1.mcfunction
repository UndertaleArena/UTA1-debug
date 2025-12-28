#By Nebulirion

tellraw @a[tag=tut_p] ["",{"translate":"pfx.flowey"},{"translate":"tut.j1"}]

scoreboard players set flowey tutorial 15
scoreboard players set @a[tag=tut_p] will 50
function ut:lobby/tutorial/e/sound
execute if score tut_state info matches 1 run schedule function ut:lobby/tutorial/e/j2 3s