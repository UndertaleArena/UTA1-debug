#By Nebulirion

scoreboard players add @a[tag=tut_p] dummy_counter_t 1

particle minecraft:explosion ~ ~0.5 ~ 0.1 0.1 0.1 0 1 force @a
playsound minecraft:entity.firework_rocket.blast_far player @a ~ ~ ~ 1.6 1.4
kill @s

execute at @e[tag=ray_flowey] store result score dummyt_count tutorial if entity @e[tag=dummy,distance=..24]

execute if entity @e[tag=ray_flowey,distance=..24] if score dummyt_count tutorial matches 0 if score flowey tutorial matches 7 run schedule function ut:lobby/tutorial/e/f2 1s
execute if entity @e[tag=ray_flowey,distance=..24] if score dummyt_count tutorial matches 0 if score flowey tutorial matches 10 run schedule function ut:lobby/tutorial/e/g6 1s
execute if entity @e[tag=ray_flowey,distance=..24] if score dummyt_count tutorial matches 0 if score flowey tutorial matches 13 run schedule function ut:lobby/tutorial/e/i6 1s