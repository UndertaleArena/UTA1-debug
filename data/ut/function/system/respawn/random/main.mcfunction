#By Nebulirion

execute as @e[tag=respawn_soul,limit=1] at @s if score @s pid = -this pid run function ut:system/respawn/random/main_suc
execute unless entity @e[tag=respawn_loc] run function ut:system/respawn/random/respawn_find
