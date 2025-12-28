#By Nebulirion

#kill effect
playsound minecraft:entity.firework_rocket.blast_far player @a ~ ~ ~ 1.6 1.4
execute at @s run particle minecraft:explosion ~ ~0.8 ~ 0.1 0.1 0.1 0 1 force @a

#scoring player
execute as @a[tag=scoring] if score @s pid = @e[tag=atker,limit=1] pid run scoreboard players add @s dummy 1

#dummy dead
execute if score @s life2 matches 1 run function ut:lobby/minis/dummy/move/dummy/jump/kill
execute if score @s life2 matches 2 run function ut:lobby/minis/dummy/move/dummy/move/kill