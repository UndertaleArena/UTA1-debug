#By Nebulirion

execute if block ~ ~ ~ #ut:trans if block ~ ~-1 ~ #ut:trans unless block ~ ~-2 ~ #ut:trans run tp @s ~ ~-1 ~
execute if block ~ ~ ~ #ut:trans if block ~ ~-1 ~ #ut:trans if block ~ ~-2 ~ #ut:trans run kill @s
execute unless block ~ ~ ~ #ut:trans if block ~ ~1 ~ #ut:trans run tp @s ~ ~1 ~
execute unless block ~ ~ ~ #ut:trans unless block ~ ~1 ~ #ut:trans run kill @s