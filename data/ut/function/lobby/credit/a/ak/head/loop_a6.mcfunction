#By Nebulirion

execute if score @s life matches ..45 run function ut:lobby/credit/a/ak/head/loop_a6a
execute if score @s life matches 46.. run function ut:lobby/credit/a/ak/head/loop_a6b

playsound entity.chicken.egg player @a ~ ~ ~ 0.1 1.5

scoreboard players add @s life 1
execute if score @s life >= @s lifetime run kill @s