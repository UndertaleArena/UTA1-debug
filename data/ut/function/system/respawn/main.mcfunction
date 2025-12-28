#By Nebulirion

#say respawned!!!
#
execute if score respawnType gamerule matches 1 run function ut:system/respawn/random/main
execute if score respawnType gamerule matches 2 run function ut:system/respawn/fixed/main
#
execute at @e[tag=respawn_loc,limit=1] run function ut:move/delete/platform
#
tp @s @e[tag=respawn_loc,limit=1]
execute positioned as @s facing entity @e[tag=arena_mid,limit=1,scores={maplock=1}] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
#
kill @e[tag=respawn_loc]