#By Nebulirion

tp @s @s
execute at @s unless block ~ ~ ~ #ut:ray_trans run tp @s ~ ~0.5 ~
execute at @s unless block ~ ~ ~ #ut:ray_trans run tp @s ~ ~0.5 ~
execute at @s unless block ~ ~ ~ #ut:ray_trans run tp @s ~ ~0.5 ~

execute if entity @s[tag=dig_os,tag=playing,tag=!respawning] run gamemode survival @s
execute if entity @s[tag=dig_oa,tag=playing,tag=!respawning] run gamemode adventure @s
execute if entity @s[tag=dig_oc,tag=playing,tag=!respawning] run gamemode creative @s
effect give @s minecraft:slow_falling 1 0 true

tag @s add dig_p
execute as @e[tag=dig_use,type=armor_stand] if score @s sid = @a[tag=dig_p,limit=1] pid run tag @s add dig_inuse
kill @e[tag=dig_inuse]

scoreboard players set @s unloadtime 5
scoreboard players reset @s plt2
scoreboard players remove @s[tag=dig] move_loop 1
tag @s remove dig
tag @s remove dig_p
tag @s remove dig_os
tag @s remove dig_oc
tag @s remove dig_oa
tag @s remove void_immune
tag @s[tag=!boss] remove no_mc_dmg
tag @s remove no_particles
