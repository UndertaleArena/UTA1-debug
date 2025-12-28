
execute as @a at @s run playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 2 0.5

tellraw @a ["",{"translate":"pfx.game"},{"translate":"cht.cd0","with":[1]}]