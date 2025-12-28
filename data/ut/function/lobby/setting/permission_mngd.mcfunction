#By Nebulirion

###CHANGE VALUE
scoreboard players add allow_roomD info 1
execute if score allow_roomD info matches 2.. run scoreboard players set allow_roomD info 0

execute if score allow_roomD info matches 0 run tellraw @s ["",{"translate":"pfx.settings"},{"translate":"set.mng.door0","with":[{"translate":"mng.dummy"}]}]
execute if score allow_roomD info matches 1 run tellraw @s ["",{"translate":"pfx.settings"},{"translate":"set.mng.door1","with":[{"translate":"mng.dummy"}]}]

execute if score allow_roomD info matches 0 at @e[tag=door_mngd] as @e[tag=lobby_text,limit=1,sort=nearest] run data merge entity @s {CustomNameVisible:0b}

function ut:lobby/door/check

###TP PEOPLE OUT OF ROOM
execute if score allow_roomD info matches 0 as @e[tag=door_mngd] at @s run function ut:lobby/setting/permission_mngd_empty