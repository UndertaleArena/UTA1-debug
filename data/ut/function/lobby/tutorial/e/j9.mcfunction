#By Nebulirion

tellraw @a[tag=tut_p] ["",{"translate":"pfx.flowey"},{"translate":"tut.j9"}]

execute at @e[tag=ray_flowey] positioned ~-20 ~-1 ~-10 run kill @e[dx=30,dy=3,dz=20,type=item,nbt={Item:{components:{"minecraft:custom_data":{spare:1b}}}}]

clear @a[tag=tut_p] minecraft:carrot_on_a_stick[minecraft:custom_data~{spare:1b}]
scoreboard players set @a[tag=tut_p] will 60
function ut:lobby/tutorial/e/sounda
execute if score tut_state info matches 1 run schedule function ut:lobby/tutorial/e/j10 1s