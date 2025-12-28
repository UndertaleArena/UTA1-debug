#By Nebulirion

#execute if entity @s[tag=stationed] run function ut:lobby/credit/a/loop_still

execute if entity @s[tag=cname,tag=moving] run function ut:lobby/credit/a/loop_move

execute if entity @s[tag=clast] run function ut:lobby/credit/a/loop_move_last

execute if entity @s[tag=creator_as,tag=moving] run function ut:lobby/credit/a/loop_ex