#By Nebulirion

tag @s add maze_win

scoreboard players operation #sec store = @s maze_timer
scoreboard players operation #sec store /= 20 const

tellraw @a[tag=maze_player] ["",{"translate":"pfx.info"},{"translate":"mng.maze.gg","with":[{"selector":"@s"},{"score":{"name":"#sec","objective":"store"}}]}]

execute if score #sec store matches ..30 unless score @s played_maze matches 1.. run advancement grant @s only ut:other/mini/maze
scoreboard players set @s played_maze 1

execute unless score @s clear_maze_this matches 1 run scoreboard players add @s clear_maze_total 1
scoreboard players set @s clear_maze_this 1
execute if score @s clear_maze_total matches 10.. run advancement grant @s only ut:other/mini/maze10

summon firework_rocket ~ ~ ~ {LifeTime:14,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{fireworks:{flight_duration:0,explosions:[{shape:"small_ball",has_flicker:0,has_trail:0,colors:[I;2437522],fade_colors:[I;12801229]}]}}}}