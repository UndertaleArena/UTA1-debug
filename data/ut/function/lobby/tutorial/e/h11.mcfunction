#By Nebulirion

#tellraw @a[tag=tut_p] "AVOID as many as you can!"

execute as @e[tag=ray_flowey] at @s run function ut:move/pellets_tutorial/use

function ut:lobby/tutorial/e/sounde
execute if score tut_state info matches 1 run schedule function ut:lobby/tutorial/e/h12 3s