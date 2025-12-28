#By Nebulirion

scoreboard players add @s plt1c 1
scoreboard players operation @s plt1c %= 2 const
execute anchored eyes positioned ^.5 ^-.1 ^.5 rotated ~ ~ run function ut:move/fireball/cast
scoreboard players add @s plt1c 1
scoreboard players operation @s plt1c %= 2 const
execute anchored eyes positioned ^-.5 ^-.1 ^.5 rotated ~ ~ run function ut:move/fireball/cast
scoreboard players set @s plt1b 0
