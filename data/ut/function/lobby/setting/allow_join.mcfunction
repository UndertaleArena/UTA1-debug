#By Nebulirion

execute unless score allow_join info matches 1 run scoreboard players set allow_join info 2
execute if score allow_join info matches 1 run scoreboard players set allow_join info 0
execute if score allow_join info matches 2 run scoreboard players set allow_join info 1

execute if score allow_join info matches 0 run tellraw @a ["",{"translate":"pfx.info"},{"translate":"cht.tj6"}]
execute if score allow_join info matches 1 run tellraw @a ["",{"translate":"pfx.info"},{"translate":"cht.tj5"}]

execute as @e[tag=ray_team] at @s run function ut:lobby/soul/reload