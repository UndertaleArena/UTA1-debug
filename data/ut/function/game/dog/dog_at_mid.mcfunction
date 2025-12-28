#By Nebulirion

scoreboard players set -IsDogExist dog_timer 1

execute at @e[tag=arena_sp,scores={maplock=1},limit=1] run function ut:move/dog/cast
execute at @e[tag=arena_sp,scores={maplock=1},limit=1] run function ut:move/delete/platform

execute as @a at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 1.4
tellraw @a ["",{"translate":"pfx.game"},{"translate":"cht.gm14"}]