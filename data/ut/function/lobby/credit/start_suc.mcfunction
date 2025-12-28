#By Nebulirion

execute at @e[tag=credit_room] unless entity @a[tag=ray_user,distance=..8] run function ut:lobby/credit/start_fail1
execute at @e[tag=credit_room] if entity @a[tag=ray_user,distance=..8] run function ut:lobby/credit/start_suc1