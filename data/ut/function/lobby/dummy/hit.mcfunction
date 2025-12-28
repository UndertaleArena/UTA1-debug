#By Nebulirion

playsound minecraft:block.bamboo.break player @a ~ ~ ~ 2 0.7
execute at @s run particle minecraft:crit ~ ~ ~ 0.2 0.2 0.2 0.2 20 force @a[scores={Q=2..}]

tag @s add atker
execute as @a if score @s pid = @e[tag=atker,limit=1] pid run tag @s add atker_p

execute if score flowey tutorial matches 12.. run scoreboard players add @a[tag=atker_p] dt 100
execute if score flowey tutorial matches 12.. as @a[tag=atker_p] run function ut:player/dt/gain

scoreboard players set #damage damage 0
execute as @a[tag=atker_p,tag=!no_hit_cross] unless score @s title_timer matches 1.. run function ut:player/actionbar/hitcross/main

scoreboard players remove @e[tag=dummying] life 1
execute as @e[tag=dummying,limit=1] if score @s life matches ..0 run function ut:lobby/dummy/die

tag @s remove atker
tag @a remove atker_p

kill @s[tag=bone]
kill @s[tag=bluebone]