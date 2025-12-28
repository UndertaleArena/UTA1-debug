#By Nebulirion

execute if score -Enabled stat matches 1 run scoreboard players add @s st_cdtuse 1
scoreboard players set #reset dt 1

scoreboard players set @s unloadtime 10

attribute @s minecraft:generic.gravity modifier add ut:kingfall 3000 add_value
#effect give @s minecraft:slow_falling 5 200 true

execute if entity @s[tag=effect_king] run function ut:move/effect/king/clear
function ut:move/effect/king/give
tag @s add king_fall
tag @s remove fall_slimed

playsound item.trident.return player @a ~ ~ ~ 2 .8
playsound item.trident.return player @a ~ ~ ~ 2 .8
playsound item.trident.return player @a ~ ~ ~ 2 .8

function ut:player/infight/use