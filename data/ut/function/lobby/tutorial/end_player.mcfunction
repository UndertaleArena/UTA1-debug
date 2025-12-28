#By Nebulirion

function ut:lobby/tutorial/leave

title @s actionbar ""

execute unless entity @s[tag=spectator,tag=!playing_tut,tag=!playing] run function ut:choose/lobby_x
execute if entity @s[tag=spectator,tag=!playing_tut,tag=!playing] run function ut:choose/spectator

scoreboard players set @s tutorial 3

execute at @e[tag=tut_join] run tp @s ^ ^ ^5 ~180 ~
execute at @s run playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 1