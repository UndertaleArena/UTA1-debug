#By Nebulirion

tellraw @a[tag=tut_p] ["",{"translate":"pfx.flowey"},{"translate":"tut.g1"}]

execute as @a[tag=tut_p] run scoreboard players operation @s cd = @s cdmax
scoreboard players set flowey tutorial 9
function ut:lobby/tutorial/e/sound
execute if score tut_state info matches 1 run schedule function ut:lobby/tutorial/e/g2 3s