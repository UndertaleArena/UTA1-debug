#By Nebulirion

tellraw @a[tag=tut_p] ["",{"translate":"pfx.flowey"},{"translate":"tut.c3"}]

function ut:lobby/tutorial/e/sound
scoreboard players set flowey tutorial 4

execute at @e[tag=ray_flowey] positioned ^6 ^ ^2 positioned ~ ~-100 ~ run function ut:lobby/setup/tut
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"chr.papyrus"}'}
execute as @e[tag=summon,limit=1,type=armor_stand] run function ut:choose/_papyrus
execute as @e[tag=summon,limit=1,type=armor_stand] positioned as @s facing entity @p[tag=tut_p] eyes run tp @s ~ ~100 ~ ~ ~
tag @e[tag=summon,limit=1,type=armor_stand] add tut_papyrus
tag @e[tag=summon,limit=1,type=armor_stand] remove summon

execute if score tut_state info matches 1 run schedule function ut:lobby/tutorial/e/c3e2 2s
execute if score tut_state info matches 1 run schedule function ut:lobby/tutorial/e/c3e3 5s
execute if score tut_state info matches 1 run schedule function ut:lobby/tutorial/e/c3e4 10s
execute if score tut_state info matches 1 run schedule function ut:lobby/tutorial/e/d1 12s