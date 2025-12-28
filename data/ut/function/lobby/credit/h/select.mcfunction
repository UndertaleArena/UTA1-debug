#hihi this is neb
#my fav.number is 27

scoreboard players set @s ray_distance -625

scoreboard players set @s unloadtime 8

execute as @a[tag=ray_user] at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 0.8 1.75

#####EGG: IT'S YOU!
scoreboard players set #itsyou store 0
execute store result score #su0 store run data get entity @s UUID[0]
execute store result score #su1 store run data get entity @s UUID[1]
execute store result score #su2 store run data get entity @s UUID[2]
execute store result score #su3 store run data get entity @s UUID[3]
execute store result score #bu0 store run data get block ~ ~ ~ profile.id[0]
execute store result score #bu1 store run data get block ~ ~ ~ profile.id[1]
execute store result score #bu2 store run data get block ~ ~ ~ profile.id[2]
execute store result score #bu3 store run data get block ~ ~ ~ profile.id[3]
execute if score #su0 store = #bu0 store if score #su1 store = #bu1 store if score #su2 store = #bu2 store if score #su3 store = #bu3 store run scoreboard players set #itsyou store 1
execute if score #itsyou store matches 1 run advancement grant @s only ut:other/credit/itsyou
#####

#####display name
data modify storage hp Skull.temp set value []
data modify storage hp Skull.temp append from block ~ ~ ~ profile.name
execute if block ~ ~-1 ~ birch_fence run data modify storage hp Skull.temp set value '"Mushroom Dance"'
execute if score #itsyou store matches 0 run tellraw @s {"storage": "hp","nbt": "Skull.temp", "interpret": true, "color": "gold", "bold": true}
#####
execute if score #itsyou store matches 1 unless score @s gamesfinished matches 100.. run tellraw @s {"translate":"cre.you", "color": "gold", "bold": true}
execute if score #itsyou store matches 1 if score @s gamesfinished matches 100.. run tellraw @s {"translate":"cre.stillyou", "color": "gold", "bold": true}
#####

#####
execute positioned ~ ~7 ~ if block ~ ~ ~ smooth_stone run function ut:lobby/credit/h/headtags