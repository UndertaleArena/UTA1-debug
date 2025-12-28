#By Nebulirion#By Nebulirion

tellraw @a ["",{"translate":"pfx.game"},{"translate":"cht.gm15","with":[{"selector":"@a[tag=this_owner]","bold":false}]}]

scoreboard players set -Reached gamescoresmall 1

execute as @a if score @s tid = -this tid at @s run playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 2 1
execute as @a unless score @s tid = -this tid at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 2 0.8

scoreboard players set @e[tag=team_spawn] gamescoresmall 0
scoreboard players add @s gamescore 1

execute if score @s gamescore >= -Goal gamescore unless score #ended game matches 1 as @a if score @s tid = -this tid run tag @s add winner
execute if entity @a[tag=winner] run function ut:game/win
tag @a remove winner