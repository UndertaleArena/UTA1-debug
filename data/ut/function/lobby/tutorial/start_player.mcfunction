#By Nebulirion

tag @s remove tut_pw
tag @s add tut_p
tag @s add tut_p100
tag @s add untargetable
tag @s add playing_tut
scoreboard players set @s dummy_counter_t 0

function ut:choose/_frisk
item replace entity @s container.0 with air
item replace entity @s container.1 with air
item replace entity @s container.2 with air
item replace entity @s container.4 with air
item replace entity @s container.8 with air
function ut:lobby/tutorial/button/give

effect give @s[scores={N=0..}] night_vision infinite 1 true
effect clear @s glowing
effect clear @s invisibility
execute at @e[tag=ray_flowey_pos] run tp @s ^ ^ ^12 ~180 ~
execute at @s run playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 1