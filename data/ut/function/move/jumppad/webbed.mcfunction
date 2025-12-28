#By Nebulirion

#TAGGING
scoreboard players operation #pad sid = @s sid
execute as @a if score @s pid = #pad sid run tag @s add jumppad_p

#MAIN
execute if entity @s[tag=jumppad_void] run tag @a[tag=jumppad_p,limit=1] remove effect_novoid_inair

effect clear @a[tag=jumppad_p] slow_falling

execute if entity @s[tag=!jumppad_void] run scoreboard players set -web advancement 1

kill @s

#UNTAGGING
tag @a remove jumppad_p