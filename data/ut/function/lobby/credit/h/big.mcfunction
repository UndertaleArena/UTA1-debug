#By Nebulirion

tellraw @a[tag=ray_user] ""
execute if entity @s[tag=sy_as] as @a[tag=ray_user] run function ut:lobby/credit/h/sy
execute if entity @s[tag=ak_as] as @a[tag=ray_user] run function ut:lobby/credit/h/ak
execute if entity @s[tag=neb_as] as @a[tag=ray_user] run function ut:lobby/credit/h/neb
execute if entity @s[tag=blue_as] as @a[tag=ray_user] run function ut:lobby/credit/h/blue
tellraw @a[tag=ray_user] ""