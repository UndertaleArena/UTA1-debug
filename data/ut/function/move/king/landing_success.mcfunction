#By Nebulirion

tag @s remove fall_slimed
tag @s remove king_fall
tp @s @s

effect give @s slowness 1 2 true

playsound minecraft:item.totem.use player @a ~ ~ ~ 1.2 1.6
execute anchored eyes run particle minecraft:end_rod ^ ^.6 ^ 0.2 0.1 0.2 0.03 30 normal @a[scores={Q=2..}]

execute store result score #rot2 store run data get entity @s Rotation[0]
execute if score #rot2 store matches 360.. run scoreboard players remove #rot2 store 360

execute rotated ~ 0 positioned ^ ^ ^.5 run function ut:move/king/cast
execute rotated ~40 0 positioned ^ ^ ^.5 run function ut:move/king/cast
execute rotated ~80 0 positioned ^ ^ ^.5 run function ut:move/king/cast
execute rotated ~120 0 positioned ^ ^ ^.5 run function ut:move/king/cast
execute rotated ~160 0 positioned ^ ^ ^.5 run function ut:move/king/cast
execute rotated ~200 0 positioned ^ ^ ^.5 run function ut:move/king/cast
execute rotated ~240 0 positioned ^ ^ ^.5 run function ut:move/king/cast
execute rotated ~280 0 positioned ^ ^ ^.5 run function ut:move/king/cast
execute rotated ~320 0 positioned ^ ^ ^.5 run function ut:move/king/cast