#By Nebulirion

scoreboard players set #moved life 0

execute if score #moved life matches 0 unless block ^ ^ ^2 #ut:trans if block ^ ^2.5 ^-.5 #ut:trans if block ^ ^2.5 ^.5 #ut:trans run function ut:move/cupcake/goup

execute if score #moved life matches 0 if block ^ ^ ^2 #ut:trans unless block ^ ^-0.5 ^2 #ut:trans run function ut:move/cupcake/gostraight
execute if score #moved life matches 0 if block ^ ^ ^2 #ut:trans unless block ^ ^-0.5 ^-.5 #ut:trans run function ut:move/cupcake/gostraight

execute if score #moved life matches 0 if block ^ ^-0.5 ^2 #ut:trans if block ^ ^-0.5 ^1 #ut:trans if block ^ ^-0.5 ^ #ut:trans run function ut:move/cupcake/godown

execute if score #moved life matches 0 if block ^ ^ ^2 #ut:trans run function ut:move/cupcake/gostraight

execute unless score #moved life = @s life2 run function ut:move/cupcake/model