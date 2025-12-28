#By Nebulirion

playsound minecraft:entity.firework_rocket.launch player @a

function ut:system/team/color
execute positioned ^-1.5 ^0.9 ^ run summon firework_rocket ~ ~ ~ {Tags:[summon],LifeTime:15,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:0,explosions:[{shape:"small_ball",has_trail:0,has_flicker:0,colors:[I;11743532]}]}}}}
execute positioned ^0.5 ^0.9 ^0.2 run summon firework_rocket ~ ~ ~ {Tags:[summon],LifeTime:15,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:0,explosions:[{shape:"small_ball",has_trail:0,has_flicker:0,colors:[I;2437522]}]}}}}
execute positioned ^-0.25 ^0.9 ^-0.5 run summon firework_rocket ~ ~ ~ {Tags:[summon],LifeTime:15,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:0,explosions:[{shape:"small_ball",has_trail:0,has_flicker:0,colors:[I;14602026]}]}}}}
execute as @e[type=firework_rocket,tag=summon] at @s run function ut:move/sp_show/firework_cast





