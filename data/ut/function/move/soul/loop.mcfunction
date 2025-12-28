#By Nebulirion

tag @s add atker
scoreboard players operation #atker pid = @s sid
execute as @a[tag=playing] if score @s pid = #atker pid run tag @s add soul_owner

tp @s ~ ~ ~ ~15 ~
execute positioned as @a[tag=soul_owner,limit=1] positioned ~ ~.7 ~ run tp @s ^ ^ ^1

tag @a remove soul_owner
tag @s remove atker