#By Nebulirion

execute positioned ^ ^ ^2 run fill ~ 160 ~ ~ 163 ~ gray_stained_glass
execute positioned ~ 159 ~ run clone ^ ^ ^-2 ^ ^ ^-2 ^ ^ ^2

function ut:lobby/soul/item
tag @s remove active
tag @s remove actived

tag @s add tr_soul
execute positioned ~ ~-1.3 ~ align xyz positioned ~-1 ~ ~-1 as @a[dx=2,dy=3,dz=2] positioned ~1.5 ~ ~1.5 run tp @s ^ ^ ^2.5 ~ ~
tag @s remove tr_soul