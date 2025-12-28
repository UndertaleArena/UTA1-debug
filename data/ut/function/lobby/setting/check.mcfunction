#By Neb or someone else bc i have no idea

execute if score allow_roomD info matches 0 run item replace entity @e[tag=permission_mngd,limit=1] armor.head with coal
execute if score allow_roomD info matches 1 run item replace entity @e[tag=permission_mngd,limit=1] armor.head with charcoal
execute unless score -total gamesfinished matches 3.. as @e[tag=permission_mngd,limit=1] run function ut:lobby/setting/lock
execute if score -total gamesfinished matches 3.. as @e[tag=permission_mngd,limit=1] run function ut:lobby/setting/unlock

execute if score allow_roomF info matches 0 run item replace entity @e[tag=permission_mngf,limit=1] armor.head with coal
execute if score allow_roomF info matches 1 run item replace entity @e[tag=permission_mngf,limit=1] armor.head with charcoal
execute unless score -total gamesfinished matches 3.. as @e[tag=permission_mngf,limit=1] run function ut:lobby/setting/lock
execute if score -total gamesfinished matches 3.. as @e[tag=permission_mngf,limit=1] run function ut:lobby/setting/unlock

execute if score allow_roomM info matches 0 run item replace entity @e[tag=permission_mngm,limit=1] armor.head with coal
execute if score allow_roomM info matches 1 run item replace entity @e[tag=permission_mngm,limit=1] armor.head with charcoal
execute unless score -total gamesfinished matches 6.. as @e[tag=permission_mngm,limit=1] run function ut:lobby/setting/lock
execute if score -total gamesfinished matches 6.. as @e[tag=permission_mngm,limit=1] run function ut:lobby/setting/unlock

execute if score allow_roomP info matches 0 run item replace entity @e[tag=permission_mngp,limit=1] armor.head with coal
execute if score allow_roomP info matches 1 run item replace entity @e[tag=permission_mngp,limit=1] armor.head with charcoal
execute unless score -total gamesfinished matches 6.. as @e[tag=permission_mngp,limit=1] run function ut:lobby/setting/lock
execute if score -total gamesfinished matches 6.. as @e[tag=permission_mngp,limit=1] run function ut:lobby/setting/unlock

execute if score allow_cre info matches 0 run item replace entity @e[tag=permission_cre,limit=1] armor.head with coal
execute if score allow_cre info matches 1 run item replace entity @e[tag=permission_cre,limit=1] armor.head with charcoal
execute unless score -total gamesfinished matches 9.. as @e[tag=permission_cre,limit=1] run function ut:lobby/setting/lock
execute if score -total gamesfinished matches 9.. as @e[tag=permission_cre,limit=1] run function ut:lobby/setting/unlock

execute if score border_mode info matches 0 run item replace entity @e[tag=border_mode,limit=1] armor.head with coal
execute if score border_mode info matches 1 run item replace entity @e[tag=border_mode,limit=1] armor.head with charcoal
execute unless score -total gamesfinished matches 5.. as @e[tag=border_mode,limit=1] run function ut:lobby/setting/lock
execute if score -total gamesfinished matches 5.. as @e[tag=border_mode,limit=1] run function ut:lobby/setting/unlock

execute if score allow_tut info matches 0 run item replace entity @e[tag=permission_tut,limit=1] armor.head with coal
execute if score allow_tut info matches 1 run item replace entity @e[tag=permission_tut,limit=1] armor.head with charcoal

execute if score allow_join info matches 0 run item replace entity @e[tag=allow_join,limit=1] armor.head with coal
execute if score allow_join info matches 1 run item replace entity @e[tag=allow_join,limit=1] armor.head with charcoal

execute if score hq_parkour info matches 13 run item replace entity @e[tag=hq_parkour,limit=1] armor.head with coal
execute if score hq_parkour info matches 1 run item replace entity @e[tag=hq_parkour,limit=1] armor.head with charcoal

execute if score setSoul gamerule matches 0 run item replace entity @e[tag=experiment_soul,limit=1] armor.head with coal
execute if score setSoul gamerule matches 1 run item replace entity @e[tag=experiment_soul,limit=1] armor.head with charcoal[custom_model_data=1]

execute if score voidProtection gamerule matches 0 run item replace entity @e[tag=experiment_void,limit=1] armor.head with coal
execute if score voidProtection gamerule matches 1 run item replace entity @e[tag=experiment_void,limit=1] armor.head with charcoal[custom_model_data=1]

function ut:lobby/gamerule/check