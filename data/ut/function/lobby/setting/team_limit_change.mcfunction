#By Nebulirion

execute if score TeamCount info matches ..1 run scoreboard players set TeamCount info 2
execute if score TeamCount info matches 9.. run scoreboard players set TeamCount info 8

execute as @e[tag=ray_team] at @s run function ut:lobby/soul/reload

tellraw @s ["",{"translate":"pfx.settings"},{"translate":"cht.set0","with":[{"score":{"name":"TeamCount","objective":"info"}}]}]