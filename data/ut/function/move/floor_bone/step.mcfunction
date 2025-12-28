#By Nebulirion

tp @s ^ ^ ^1 ~ ~

execute at @s unless block ~ ~ ~ #ut:trans run tp @s ~ ~1 ~
execute at @s unless block ~ ~ ~ #ut:trans if block ~ ~1 ~ #ut:trans run tp @s ~ ~1 ~
execute at @s if block ~ ~ ~ #ut:trans if block ~ ~-1 ~ #ut:trans run tp @s ~ ~-1 ~
execute at @s if block ~ ~ ~ #ut:trans if block ~ ~-1 ~ #ut:trans run tp @s ~ ~-1 ~

execute at @s unless block ~ ~ ~ #ut:trans run function ut:move/floor_bone/stop
execute at @s if block ~ ~-1 ~ #ut:trans run function ut:move/floor_bone/stop