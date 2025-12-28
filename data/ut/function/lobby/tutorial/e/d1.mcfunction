#By Nebulirion

tellraw @a[tag=tut_p] ["",{"translate":"pfx.flowey"},{"translate":"tut.d1"}]

function ut:lobby/tutorial/e/sound
scoreboard players set flowey tutorial 5
tag @a[tag=tut_nice] remove tut_nice

kill @e[tag=tut_papyrus]

execute if score tut_state info matches 1 run schedule function ut:lobby/tutorial/e/d2 3s