#By Neb or someone else bc i have no idea

data merge entity @s {CustomName:'{"translate":"las.ft.door","with":["6"]}'}

scoreboard players set #open store 1

execute unless score -total gamesfinished matches 6.. run scoreboard players set #open store 0
execute if entity @s[tag=door_mngm] unless score allow_roomM info matches 1 run function ut:lobby/door/lock
execute if entity @s[tag=door_mngp] unless score allow_roomP info matches 1 run function ut:lobby/door/lock

execute unless score #open store matches 1 run function ut:lobby/door/door_6g_close
execute if score #open store matches 1 run function ut:lobby/door/door_6g_open