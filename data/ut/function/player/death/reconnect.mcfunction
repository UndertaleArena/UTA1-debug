#By Nebulirion
#triggers when a player reconnects in certain gamemodes.

scoreboard players reset @s kid
tag @s add void
tag @s add recon_void
execute positioned ~ 0 ~ run function ut:player/death/main
tag @s remove recon_void
tag @s remove void