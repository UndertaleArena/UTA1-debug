#By Nebulirion

#playsound minecraft:entity.spider.ambient player @a ~ ~ ~ 1 1.2

execute if score -Enabled stat matches 1 run scoreboard players add @s st_cdtuse 1
scoreboard players set #reset dt 1

execute rotated ~ 0 if block ^ ^0.1 ^1.5 #ut:trans if block ^ ^0.1 ^2.5 #ut:trans if block ^ ^0.1 ^3.5 #ut:trans positioned ^ ^.1 ^2.5 run function ut:move/cupcake/cast
execute rotated ~ 0 if block ^ ^0.1 ^1.5 #ut:trans if block ^ ^0.1 ^2.5 #ut:trans unless block ^ ^0.1 ^3.5 #ut:trans positioned ^ ^.1 ^1.5 run function ut:move/cupcake/cast
execute rotated ~ 0 if block ^ ^0.1 ^1.5 #ut:trans unless block ^ ^0.1 ^2.5 #ut:trans positioned ^ ^.1 ^.5 run function ut:move/cupcake/cast
execute rotated ~ 0 unless block ^ ^0.1 ^1.5 #ut:trans if block ^ ^0.1 ^.5 #ut:trans positioned ^ ^.1 ^ run function ut:move/cupcake/cast
execute rotated ~ 0 unless block ^ ^0.1 ^1.5 #ut:trans unless block ^ ^0.1 ^.5 #ut:trans positioned ^ ^.1 ^-.5 run function ut:move/cupcake/cast

scoreboard players set @s unloadtime 20
function ut:player/infight/use