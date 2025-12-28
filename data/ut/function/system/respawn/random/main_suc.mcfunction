#By Nebulirion

execute as @e[tag=arena_spawning,limit=1,sort=nearest] at @s run function ut:system/respawn/summon_respawn_loc
function ut:void