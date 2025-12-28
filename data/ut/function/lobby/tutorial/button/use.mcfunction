#By Nebulirion

scoreboard players set @s unloadtime 20
function ut:player/infight/use

tellraw @s ["",{"translate":"pfx.tut"},{"translate":"tut.quit"}]
function ut:lobby/tutorial/quit