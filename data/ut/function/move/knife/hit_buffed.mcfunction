#By Nebulirion

playsound entity.warden.attack_impact player @a ~ ~ ~ 0.75 2

execute run particle block{block_state:magenta_terracotta} ~ ~1 ~ .3 .5 .3 0.2 10 normal @a[scores={Q=2..}]
#execute run particle dust{color:[1.0,0.3,0.4],scale:1} ~ ~1 ~ .3 .5 .3 0 30 normal @a[scores={Q=2..}]
execute facing entity @s feet positioned ~ ~1.04 ~ positioned ^ ^ ^.75 run particle dust{color:[1.0,0.3,0.4],scale:1} ~ ~ ~ .3 .3 .3 0 30 normal @a[scores={Q=3..}]
execute facing entity @s feet positioned ~ ~1.04 ~ positioned ^ ^ ^1.5 run particle dust{color:[1.0,0.3,0.4],scale:1} ~ ~ ~ .14 .14 .14 0 20 normal @a[scores={Q=3..}]
execute facing entity @s feet positioned ~ ~1.04 ~ positioned ^ ^ ^2.25 run particle dust{color:[1.0,0.3,0.4],scale:1} ~ ~ ~ .07 .07 .07 0 10 normal @a[scores={Q=3..}]

execute if entity @s[tag=!hp_lock] at @s run particle happy_villager ~ ~.9 ~ 0.3 0.45 0.3 0 3 normal @a[scores={Q=1..}]

execute if entity @s[tag=!hp_lock] run scoreboard players add @s hp 100

execute if entity @s[tag=!hp_lock] run function ut:player/hp/gain
