#By Nebulirion

execute as @e[tag=dig_inuse,tag=dig_out] at @s rotated as @a[tag=dig_p,limit=1] run tp @s ~ ~0.125 ~ ~ ~
execute positioned as @e[tag=dig_inuse,tag=dig_out,limit=1] run tp @s ~ ~-1.5 ~ ~ ~

execute at @s run function ut:move/dig/effect

execute if score @s plt2 matches 11 run item replace entity @e[tag=dig_inuse,tag=dig_in] armor.head with air
execute if score @s plt2 matches 11 run item replace entity @e[tag=dig_inuse,tag=dig_out] armor.head with gold_nugget
#execute if score @s plt2 matches 11 run spectate @e[tag=dig_inuse,tag=dig_out,limit=1] @s 
execute if score @s plt2 matches ..0 positioned as @e[tag=dig_inuse,tag=dig_out,limit=1] positioned ~ ~-1.5 ~ run function ut:move/dig/stop