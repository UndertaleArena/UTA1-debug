#By Nebulirion

scoreboard players add @s life 1

execute if score @s life matches 10 run playsound block.note_block.pling player @a ~ ~ ~ 1 1.3
execute if score @s life matches 20 run playsound block.note_block.pling player @a ~ ~ ~ 1 1.3
execute if score @s life matches 30 run playsound block.note_block.pling player @a ~ ~ ~ 1 1.3
execute if score @s life matches 40 run playsound block.note_block.pling player @a ~ ~ ~ 1 1.3
execute if score @s life matches 50 run playsound block.note_block.pling player @a ~ ~ ~ 1 1.3
execute if score @s life matches 55 run playsound block.note_block.pling player @a ~ ~ ~ 1 1.3
execute if score @s life matches 55 run function ut:move/dog/loop_cap_bomb_gofast
execute if score @s life matches 60 run playsound block.note_block.pling player @a ~ ~ ~ 1 1.3
execute if score @s life matches 65 run playsound block.note_block.pling player @a ~ ~ ~ 1 1.3
execute if score @s life matches 70 run playsound block.note_block.pling player @a ~ ~ ~ 1 1.3
execute if score @s life matches 72 run playsound block.note_block.pling player @a ~ ~ ~ 1 1.3
execute if score @s life matches 74 run playsound block.note_block.pling player @a ~ ~ ~ 1 1.3
execute if score @s life matches 76 run playsound block.note_block.pling player @a ~ ~ ~ 1 1.3
execute if score @s life matches 78 run playsound block.note_block.pling player @a ~ ~ ~ 1 1.3
execute if score @s life matches 80..89 run playsound block.note_block.pling player @a ~ ~ ~ 1 1.3

execute if score @s life matches 90.. run function ut:move/dog/bomb
