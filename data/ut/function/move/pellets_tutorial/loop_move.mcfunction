#By Nebulirion

tp @s ^ ^ ^1 ~ ~

tag @s add atker
execute positioned ^ ^ ^1 positioned ~ ~-1 ~ as @a[distance=..1,tag=playing_tut] run function ut:lobby/tutorial/hit
tag @s remove atker

execute positioned ^ ^ ^1 unless block ~ ~ ~ #ut:trans run kill @s