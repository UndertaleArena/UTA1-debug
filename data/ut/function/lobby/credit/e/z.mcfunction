#hi

function ut:lobby/credit/check
tag @e[tag=credit_as,tag=stationed,tag=creator_as,limit=1,sort=random] add cnextex

effect give @e[tag=cnextex] glowing 1 1 true
tag @e[tag=cnextex] remove stationed
tag @e[tag=cnextex] add moving
scoreboard players set @e[tag=cnextex] credit -5
playsound minecraft:entity.firework_rocket.launch player @a ~ ~ ~ 1 1
data merge entity @e[tag=cnextex,limit=1] {CustomNameVisible:1b}

execute if entity @e[tag=cnextex,tag=blue_as] run function ut:lobby/credit/a/blue/start
execute if entity @e[tag=cnextex,tag=sy_as] run function ut:lobby/credit/a/sy/start
execute if entity @e[tag=cnextex,tag=ak_as] run function ut:lobby/credit/a/ak/start
execute if entity @e[tag=cnextex,tag=neb_as] run function ut:lobby/credit/a/neb/start
