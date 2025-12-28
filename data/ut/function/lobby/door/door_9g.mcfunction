#By Neb or someone else bc i have no idea

#CHANGE NAME
data merge entity @s {CustomName:'{"translate":"las.ft.door","with":["9"]}'}

execute if score -total gamesfinished matches 9.. run function ut:lobby/door/door_9g_open
execute unless score -total gamesfinished matches 9.. run function ut:lobby/door/door_9g_close