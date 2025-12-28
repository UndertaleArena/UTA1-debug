#By Nebulirion, potato is life

###TRIGGER
execute if score @s trigger matches -2147483648..2147483647 unless score @s trigger matches 0 run function ut:lobby/trigger

###SAFTY
execute if score tut_state info matches 0 if entity @s[tag=tut_p] run function ut:lobby/tutorial/quit
execute if score credit_state info matches 0 if entity @s[tag=credit_p] run function ut:lobby/credit/quit

###ADMIN
execute if score @s nebbell matches 1.. run function ut:lobby/misc/nebbell
execute if entity @s[tag=!neb,gamemode=creative] run function ut:lobby/admin/trigger

###ACTIONBAR
execute if entity @s[tag=!playing_tut,tag=!credit_p] run function ut:player/actionbar_lobby/main

###RC
execute if score @s unloadtime matches 1.. run scoreboard players remove @s unloadtime 1
execute if score @s rc matches 1.. unless score @s unloadtime matches 1.. at @s run function ut:lobby/rc

execute if data entity @s SelectedItem.components."minecraft:custom_data".selector anchored eyes run function ut:lobby/ray/main

###FRISK
execute if block ~ 130 ~ ochre_froglight if score @s chr matches 4 if entity @s[advancements={ut:chr/frisk/lv20=true}] run function ut:lobby/misc/jump