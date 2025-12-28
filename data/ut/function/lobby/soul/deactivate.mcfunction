#By Nebulirion

execute positioned ^ ^ ^2 run fill ~ 160 ~ ~ 163 ~ gray_stained_glass
execute positioned ~ 159 ~ run clone ^ ^ ^-2 ^ ^ ^-2 ^ ^ ^2

item replace entity @s armor.head with air
tag @s remove active
tag @s remove actived

tag @s add tr_soul
execute positioned ~ ~-1.3 ~ align xyz positioned ~-1 ~ ~-1 as @a[dx=2,dy=3,dz=2] positioned ~1.5 ~ ~1.5 run tp @s ^ ^0.5 ^2.5 ~ ~
execute as @a if score @s tid >= @e[tag=tr_soul,limit=1] ptid run scoreboard players reset @s tid
execute as @a run function ut:system/join_team
tag @s remove tr_soul