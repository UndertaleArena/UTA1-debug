#By Nebulirion

tp @s ~ ~ ~ ~ ~1


scoreboard players remove @s[tag=!active,scores={life=1..}] life 1
execute if entity @s[tag=!active,scores={life=0}] run function ut:lobby/dummy2/respawn
execute if entity @s[tag=moving] at @s rotated ~ 0 run function ut:lobby/dummy2/loop_moving