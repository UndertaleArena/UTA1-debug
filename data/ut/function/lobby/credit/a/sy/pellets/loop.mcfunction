#By Nebulirion

particle instant_effect ~ ~ ~ 0 0 0 0 0 force @a[scores={Q=3..}]

scoreboard players add @s life 1
execute if score @s life >= @s lifetime run kill @s

execute if score @s life matches 5 run tp @s ~ ~ ~ ~360 0
execute if score @s life matches 5 run item replace entity @s armor.head with pumpkin_seeds 1
execute if score @s life matches 5 run playsound minecraft:item.armor.equip_alternative player @a ~ ~ ~ 1 1
execute if score @s life matches 100 run playsound minecraft:entity.arrow.shoot player @a ~ ~ ~ 0.5 1.5
execute if score @s life matches 101.. run function ut:lobby/credit/a/sy/pellets/loop_move