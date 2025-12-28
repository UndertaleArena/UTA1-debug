#By Nebulirion

advancement grant @s only ut:other/mini/bone_parkour
scoreboard players add @s st_mngp 1
tellraw @a[tag=in_parkour_mng] ["",{"translate":"pfx.info"},{"translate":"las.mngp.gg","with":[{"selector":"@s"}]}]
summon firework_rocket ~ ~ ~ {LifeTime:14,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{fireworks:{flight_duration:0,explosions:[{shape:"small_ball",has_flicker:0,has_trail:0,colors:[I;2437522],fade_colors:[I;12801229]}]}}}}
tag @s remove parkour_win