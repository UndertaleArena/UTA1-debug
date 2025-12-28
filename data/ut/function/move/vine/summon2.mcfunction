#By Nebulirion

execute as @e[tag=vine_summon] if score @s aid = #atker aid if score @s life matches ..10 at @s rotated ~35 0 positioned ^ ^ ^1.5 run function ut:move/vine/summon

execute as @e[tag=summon2] at @s run function ut:move/vine/blocktest
#scoreboard players operation @e[tag=summon2] lifetime = lifetime lifetime
#scoreboard players remove @e[tag=summon2] lifetime 10
tag @e[tag=summon2] remove summon2