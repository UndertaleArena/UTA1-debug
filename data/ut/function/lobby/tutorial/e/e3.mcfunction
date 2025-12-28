#By Nebulirion

tellraw @a[tag=tut_p] ["",{"translate":"pfx.flowey"},{"translate":"tut.e3"}]

execute as @a[tag=tut_p] run scoreboard players operation @s mp = @s mpmax
scoreboard players set flowey tutorial 7
function ut:lobby/tutorial/e/sound
execute if score tut_state info matches 1 run schedule function ut:lobby/tutorial/e/e4 2s