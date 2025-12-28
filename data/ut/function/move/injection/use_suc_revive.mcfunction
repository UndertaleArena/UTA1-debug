#By Nebulirion

scoreboard players set -injecttaglock store 1
execute at @s positioned ~ ~2 ~ align y positioned ~ ~.1 ~ run function ut:move/dust_pile/revive
scoreboard players set -injecttaglock store 0
execute as @a[tag=revive_p,limit=1] run function ut:move/injection/target