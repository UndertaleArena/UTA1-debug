#By Nebulirion

particle minecraft:enchant ^ ^ ^-.5 0.2 0.2 0.2 0 3 normal @a[scores={Q=3..}]
#particle instant_effect ~ ~ ~ 0 0 0 0 0 force

execute if score @s life matches 1 run function ut:lobby/credit/a/neb/cmb/loop_0
execute if score @s life matches 2..40 run function ut:lobby/credit/a/neb/cmb/loop_pending
execute if score @s life matches 40 run function ut:lobby/credit/a/neb/cmb/shoot
execute if score @s life matches 41.. run function ut:lobby/credit/a/neb/cmb/loop_move

scoreboard players add @s life 1
execute if score @s life >= @s lifetime run kill @s