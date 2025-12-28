#By Nebulirion

execute at @e[tag=arena_sp,scores={maplock=1},limit=1] run function ut:move/fallen_soul/cast

execute as @a at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 1.4
tellraw @a ["",{"translate":"pfx.game"},{"translate":"cht.gm13"}]

schedule function ut:game/soul/soul_at_mid 90s