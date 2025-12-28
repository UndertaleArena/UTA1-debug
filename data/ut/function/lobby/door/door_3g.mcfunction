#By Neb or someone else bc i have no idea

data merge entity @s {CustomName:'{"translate":"las.ft.door","with":["3"]}'}

scoreboard players set #open store 1

execute unless score -total gamesfinished matches 3.. run scoreboard players set #open store 0
execute if entity @s[tag=door_mngd] unless score allow_roomD info matches 1 run function ut:lobby/door/lock
execute if entity @s[tag=door_mngf] unless score allow_roomF info matches 1 run function ut:lobby/door/lock

execute unless score #open store matches 1 run function ut:lobby/door/door_3g_close
execute if score #open store matches 1 run function ut:lobby/door/door_3g_open