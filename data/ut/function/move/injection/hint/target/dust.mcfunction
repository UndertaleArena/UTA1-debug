execute as @e[type=armor_stand,distance=..4,tag=dust_pile,tag=!dust_pile_norevive] if score @s tid = #user tid run tag @s add inject_target_can

kill @s