#By Nebulirion

scoreboard players remove pl info 1
tag @r[tag=!spectator,tag=!player] add player
execute if score pl info matches 1.. if entity @a[tag=!spectator,tag=!player] run function ut:system/give_tid_get