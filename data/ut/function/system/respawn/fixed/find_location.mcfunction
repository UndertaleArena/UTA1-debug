#By Nebulirion

scoreboard players operation -this tid = @s tid
execute as @e[tag=team_spawn,scores={maplock=1}] if score @s tid = -this tid at @s positioned ~ ~30 ~ run function ut:move/respawn/cast