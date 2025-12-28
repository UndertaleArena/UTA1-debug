#By Nebulirion
#
execute as @a at @s run function ut:player/main
execute as @e[type=item] unless data entity @s Thrower run kill @s
#
execute if score -InGame game matches 0 run function ut:lobby_loop
#
execute if score -InGame game matches 1 run function ut:ingame_loop