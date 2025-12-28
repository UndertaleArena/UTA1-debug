#By Nebulirion

###CHANGE VALUE
scoreboard players add allow_roomM info 1
execute if score allow_roomM info matches 2.. run scoreboard players set allow_roomM info 0

execute if score allow_roomM info matches 0 run tellraw @s ["",{"translate":"pfx.settings"},{"translate":"set.mng.door0","with":[{"translate":"mng.maze"}]}]
execute if score allow_roomM info matches 1 run tellraw @s ["",{"translate":"pfx.settings"},{"translate":"set.mng.door1","with":[{"translate":"mng.maze"}]}]

execute if score allow_roomM info matches 0 at @e[tag=door_mngm] as @e[tag=lobby_text,limit=1,sort=nearest] run data merge entity @s {CustomNameVisible:0b}

function ut:lobby/door/check

###TP PEOPLE OUT OF ROOM
execute if score allow_roomM info matches 0 as @e[tag=door_mngm] at @s run function ut:lobby/setting/permission_mngm_empty