#By Nebulirion

execute if entity @s[tag=!spectator,tag=!tut_pw] run function ut:choose/lobby_x
execute if entity @s[tag=spectator,tag=!tut_pw] run function ut:choose/spectator

function ut:lobby/tutorial/leave

execute at @e[tag=tut_join] run tp @s ^ ^ ^-5 ~180 ~
execute at @s run playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 1