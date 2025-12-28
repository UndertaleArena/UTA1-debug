#By Nebulirion

execute as @e[tag=door_9g] at @s run function ut:lobby/door/door_9g_open
data merge entity @e[tag=door_9g,limit=1] {CustomName:'{"translate":"las.ft.door","with":["9"]}'}

execute as @a[tag=credit_p] at @s run function ut:lobby/credit/end_player

execute at @e[tag=credit_play] run fill ~-12 ~3 ~-12 ~12 ~ ~12 air replace structure_void

scoreboard players set credit_state info 0
kill @e[tag=credit_as]
kill @e[tag=lobby_ft_wrncre]