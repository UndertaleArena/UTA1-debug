#By Nebulirion

function ut:lobby/tutorial/clear_schedule

execute as @a[tag=tut_p] run function ut:lobby/tutorial/end_player

item replace entity @e[tag=ray_flowey] armor.head with air
execute if score tut_state info matches 1 run tellraw @a[tag=tut_pw] ["",{"translate":"pfx.tutorial"},{"translate":"tut.end"}]

kill @e[tag=tut_papyrus]
kill @e[tag=pellet_tut]
function ut:lobby/dummy/ripall
execute as @e[tag=ray_flowey] at @e[tag=ray_flowey_pos] run tp @s ~ ~-4 ~

scoreboard players reset flowey tutorial
scoreboard players set tut_state info 0

#ULTRA OLD TEXT from like v1.0.0
#kill @e[tag=lobby_ft_wrntut]