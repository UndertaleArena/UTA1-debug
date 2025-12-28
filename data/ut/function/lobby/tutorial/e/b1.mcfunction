#By Nebulirion

tellraw @a[tag=tut_p] ["",{"translate":"pfx.flowey"},{"translate":"tut.b1"}]

function ut:lobby/tutorial/e/sound

tag @e[tag=ray_flowey] remove active
execute as @a[tag=tut_p] run function ut:choose/soul
scoreboard players set flowey tutorial 1
execute if score tut_state info matches 1 run schedule function ut:lobby/tutorial/e/b2 2s