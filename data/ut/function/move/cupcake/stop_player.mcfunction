#By Nebulirion

tag @s remove in_cupcake
tag @s remove untargetable
tag @s[tag=!boss] remove no_mc_dmg

scoreboard players reset @s cid
scoreboard players set @s unloadtime 10
function ut:player/infight/damaged

execute align xyz run tp @s ~.5 ~ ~.5
execute at @s unless block ~ ~-0.25 ~ #ut:trans run tp @s ~ ~0.5 ~
execute at @s unless block ~ ~-0.25 ~ #ut:trans run tp @s ~ ~0.5 ~
execute at @s unless block ~ ~-0.25 ~ #ut:trans run tp @s ~ ~0.5 ~
tp @s @s

effect clear @s minecraft:blindness
effect clear @s minecraft:slow_falling
function ut:move/effect/nofall/give