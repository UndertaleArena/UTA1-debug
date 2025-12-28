#By Nebulirion 08/17/2020 bad day bc bad

#say particle
scoreboard players set #timer60 tutorial 0
scoreboard players set #particle store 0

scoreboard players add @s gamesfinished 0
scoreboard players operation #x store = @s tut_sr
execute if score #x store > @s gamesfinished run scoreboard players reset #x store
execute if score @s gamesfinished >= @s tut_sr run scoreboard players set #particle store 1
execute unless score @s tut_sr matches 3.. run scoreboard players set #particle store 1

execute if score #particle store matches 1 if score @s tutorial matches 1.. run particle block_marker{block_state:"minecraft:barrier"} ~1.1 ~2.5 ~ 0 0 0 0 0 force @s

execute unless score @s tut_sr matches 3.. run particle block_marker{block_state:"minecraft:barrier"} ^-3 ^-36.8 ^-15 0 0 0 0 0 force @s
execute if score #x store matches 3 run particle block_marker{block_state:"minecraft:barrier"} ^-12 ^-37.7 ^-3 0 0 0 0 0 force @s
execute if score #x store matches 6 run particle block_marker{block_state:"minecraft:barrier"} ^-12 ^-37.7 ^-5 0 0 0 0 0 force @s
execute if score #x store matches 9 run particle block_marker{block_state:"minecraft:barrier"} ^-12 ^-37.7 ^-7 0 0 0 0 0 force @s
execute if score #x store matches 12 run particle block_marker{block_state:"minecraft:barrier"} ^-12 ^-37.7 ^-9 0 0 0 0 0 force @s
execute if score #x store matches 15 run particle block_marker{block_state:"minecraft:barrier"} ^-12 ^-37.7 ^-11 0 0 0 0 0 force @s
execute if score #x store matches 18 run particle block_marker{block_state:"minecraft:barrier"} ^12 ^-37.7 ^-3 0 0 0 0 0 force @s
execute if score #x store matches 21 run particle block_marker{block_state:"minecraft:barrier"} ^12 ^-37.7 ^-5 0 0 0 0 0 force @s
execute if score #x store matches 24 run particle block_marker{block_state:"minecraft:barrier"} ^12 ^-37.7 ^-7 0 0 0 0 0 force @s
execute if score #x store matches 27 run particle block_marker{block_state:"minecraft:barrier"} ^12 ^-37.7 ^-9 0 0 0 0 0 force @s
execute if score #x store matches 30 run particle block_marker{block_state:"minecraft:barrier"} ^12 ^-37.7 ^-11 0 0 0 0 0 force @s