#By Nebulirion

execute as @e[tag=dig_inuse,tag=dig_in] at @s rotated as @a[tag=dig_p,limit=1] run tp @s ~ ~-0.125 ~ ~ ~
execute positioned as @e[tag=dig_inuse,tag=dig_in,limit=1] run tp @s ~ ~-1.5 ~ ~ ~

execute at @s run function ut:move/dig/effect