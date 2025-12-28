
execute if score #ended game matches 1 run forceload add ~ ~

execute if score -InGame game matches 1 at @a[tag=playing,tag=!respawning,tag=!no_firework] run summon firework_rocket ~ ~.5 ~ {Tags:[summon],LifeTime:20,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:0,explosions:[{shape:"small_ball",has_trail:0b,colors:[696969],fade_colors:[14540253]}]}}}}

execute as @e[tag=summon,type=firework_rocket] at @s run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].colors[0] set from entity @p equipment.chest.components."minecraft:dyed_color"
execute as @e[tag=summon,type=firework_rocket] at @s run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].fade_colors[0] set from entity @p equipment.feet.components."minecraft:dyed_color"

tag @e[tag=summon,type=firework_rocket] remove summon

execute if score -InGame game matches 1 run schedule function ut:game/celebrate 1s