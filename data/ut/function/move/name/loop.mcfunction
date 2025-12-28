#By Nebulirion

tag @s add naming
scoreboard players operation #atker pid = @s sid
execute as @a[tag=playing] if score @s pid = #atker pid run tag @s add name_owner
#execute store result entity @s CustomNameVisible byte 1 run scoreboard players get @a[tag=name_owner,limit=1] hpdisplay
execute as @a[tag=name_owner,limit=1] at @s anchored eyes rotated ~ 0 run tp @e[tag=naming,limit=1] ^ ^.5 ^
tag @a remove name_owner
tag @s remove naming