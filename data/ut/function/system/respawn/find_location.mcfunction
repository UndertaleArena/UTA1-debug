#By Nebulirion

scoreboard players operation -this pid = @s pid
scoreboard players operation -this tid = @s tid

execute if score respawnType gamerule matches 1 run function ut:system/respawn/random/find_location
execute if score respawnType gamerule matches 2 run function ut:system/respawn/fixed/find_location