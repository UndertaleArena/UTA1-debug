#By Nebulirion

#announcement
tellraw @s [{"translate":"pfx.info"},{"translate":"mini.shoot2"}]

#firework
summon firework_rocket ~ ~ ~ {Tags:[summon],LifeTime:14,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:0,explosions:[{shape:"small_ball",has_trail:0,has_flicker:0,colors:[I;14405006],fade_colors:[I;16777215]}]}}}}

#score update
scoreboard players operation @s dummy_best = @s dummy

#advancement check
execute if score @s dummy_best matches 20.. run advancement grant @s only ut:other/mini/dummy