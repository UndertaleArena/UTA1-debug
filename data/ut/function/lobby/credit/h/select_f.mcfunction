#hihi this is neb
#my fav.number is 27

scoreboard players set @s ray_distance -625

scoreboard players set @s unloadtime 20

execute as @a[tag=ray_user] at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 0.8 1.75
tellraw @s {"translate":"frog.egg0", "color": "gold", "bold": true}