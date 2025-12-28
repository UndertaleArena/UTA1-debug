#By Nebulirion

execute if entity @s[tag=playing,tag=!respawning] run function ut:player/playing
execute if entity @s[tag=playing,tag=respawning] unless score respawnType gamerule matches 0 unless score #ended game matches 1 run function ut:player/respawning
execute if entity @s[tag=playing,tag=respawning] if score respawnType gamerule matches 0 run function ut:player/spectating
execute if entity @s[tag=!playing,tag=!sy] run function ut:player/spectating