#By Nebulirion

particle minecraft:instant_effect ~ ~1 ~ .2 .5 .2 .5 50 normal @a[scores={Q=1..}]
execute as @a[tag=deader] run function ut:player/death/dropsoul