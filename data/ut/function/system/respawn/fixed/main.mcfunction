#By Nebulirion

execute as @e[tag=team_spawn,scores={maplock=1}] if score @s tid = -this tid at @s run function ut:system/respawn/summon_respawn_loc