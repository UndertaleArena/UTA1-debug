#By Nebulirion

forceload add 300 1279 300 1281

execute as @e[tag=door_9g] at @s run function ut:lobby/door/door_9g_close
data merge entity @e[tag=door_9g,limit=1] {CustomName:'{"translate":"cre.inuse"}'}

tag @e[tag=creator_as] add active
execute as @a[distance=..10] run function ut:lobby/credit/start_player
execute as @a[distance=..13] run function ut:lobby/credit/quit

execute at @e[tag=credit_play] run fill ~-12 ~ ~-12 ~12 ~3 ~12 air replace structure_void

#scoreboard players set sy credit_hit 0
#scoreboard players set blue credit_hit 0
#scoreboard players set ak credit_hit 0
#scoreboard players set neb credit_hit 0
scoreboard players set legit credit 0
scoreboard players set headd credit 0
scoreboard players set hid credit 0
scoreboard players set credit_state info 1
kill @e[tag=credit_as]

execute as @e[tag=credit_play] at @s run tp @s ~ ~ ~ 90 0
#execute at @e[tag=lobby_wrnftpos] positioned ~ ~1.6 ~ run function ut:lobby/text/create
#data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.ft.crewrn"}'}
#tag @e[tag=summon] add lobby_ft_wrncre
#tag @e[tag=summon] remove summon

#schedule function ut:lobby/credit/s/1 52t append
#schedule function ut:lobby/credit/s/1 56t append
schedule function ut:lobby/credit/e/a 3s
#schedule function ut:lobby/credit/s/2 60t append
#schedule function ut:lobby/credit/s/3 62t append
#schedule function ut:lobby/credit/s/4 64t append