#By Nebulirion

tellraw @s ["",{"translate":"pfx.tut"},{"translate":"tut.gg1"}]
tellraw @s ["",{"translate":"pfx.tut"},{"translate":"tut.gg2"}]
execute at @s run playsound minecraft:entity.pillager.celebrate player @s ~ ~ ~ 1 2

scoreboard players reset @s bid
function ut:player/bossbar/adjust

function ut:lobby/tutorial/quit
function ut:lobby/tutorial/join

tellraw @a[tag=tut_p] ["",{"translate":"pfx.flowey"},{"translate":"tut.gg0","with":[{"selector":"@s"}]}]
function ut:lobby/tutorial/e/soundenc