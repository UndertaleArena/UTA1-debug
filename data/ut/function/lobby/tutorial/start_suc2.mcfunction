#By Nebulirion

function ut:lobby/tutorial/clear_schedule

item replace entity @e[tag=ray_flowey] armor.head with air
execute as @a[tag=tut_pw,limit=8,sort=random] run function ut:lobby/tutorial/start_player

kill @e[tag=tut_papyrus]
function ut:lobby/dummy/ripall
tag @e[tag=ray_flowey] remove active
execute as @e[tag=ray_flowey] at @e[tag=ray_flowey_pos] run tp @s ~ ~-4 ~
execute at @e[tag=ray_flowey] run kill @e[tag=move,distance=..24]

scoreboard players reset @s plt1
scoreboard players reset @s plt2
scoreboard players reset @s plt3
scoreboard players set tut_state info 1

scoreboard players set flowey tutorial 1
scoreboard players set flowey_in tutorial 0
scoreboard players set flowey_out tutorial 0

schedule function ut:lobby/tutorial/e/a0 2s