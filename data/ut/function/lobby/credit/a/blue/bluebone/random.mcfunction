#By Nebulirion

execute facing entity @r[tag=credit_p] feet rotated ~5 ~ positioned ^-0.3 ^ ^0.5 run function ut:move/random/cast
execute facing entity @r[tag=credit_p] feet rotated ~ ~ positioned ^ ^ ^.5 run function ut:move/random/cast
execute facing entity @r[tag=credit_p] feet rotated ~-5 ~ positioned ^0.3 ^ ^0.5 run function ut:move/random/cast

kill @e[tag=random_as,limit=2,sort=random]
execute at @e[tag=random_as,limit=1,sort=random] run function ut:lobby/credit/a/blue/bluebone/cast
kill @e[tag=random_as]