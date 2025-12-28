#By Nebulirion

execute align y run particle item{item:gray_concrete} ~ ~1.2 ~ 0.1 0 0.1 0.05 3 
execute align y if block ~ ~1 ~ #ut:trans run tp @s ~ ~1.1 ~ ~ ~-60

execute if entity @s[tag=cname_helper] run function ut:lobby/credit/a/loop_move_bc_help