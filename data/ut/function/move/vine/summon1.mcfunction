#By Nebulirion

item replace entity @s armor.head with minecraft:air 1

execute rotated ~ 0 positioned ^ ^ ^1 run function ut:move/vine/summon
execute rotated ~60 0 positioned ^ ^ ^1 run function ut:move/vine/summon
execute rotated ~120 0 positioned ^ ^ ^1 run function ut:move/vine/summon
execute rotated ~180 0 positioned ^ ^ ^1 run function ut:move/vine/summon
execute rotated ~240 0 positioned ^ ^ ^1 run function ut:move/vine/summon
execute rotated ~300 0 positioned ^ ^ ^1 run function ut:move/vine/summon

#execute rotated ~65 ~ positioned ^ ^ ^2 run function ut:move/vine/summon
#execute rotated ~155 ~ positioned ^ ^ ^2 run function ut:move/vine/summon
#execute rotated ~245 ~ positioned ^ ^ ^2 run function ut:move/vine/summon
#execute rotated ~335 ~ positioned ^ ^ ^2 run function ut:move/vine/summon

#tp @s ~ ~0.7 ~ 

execute as @e[tag=summon2] at @s run function ut:move/vine/blocktest
tag @e[tag=summon2] remove summon2