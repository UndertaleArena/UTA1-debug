#By Nebulirion

execute if score TeamLimit info matches ..1 run scoreboard players set TeamLimit info 2
execute if score TeamLimit info matches 9.. run scoreboard players set TeamLimit info 8

tellraw @s ["",{"translate":"pfx.settings"},{"translate":"cht.set2","with":[{"score":{"name":"TeamLimit","objective":"info"}}]}]
execute if score TeamLimit info matches ..1 run tellraw @s ["",{"translate":"pfx.warning"},{"translate":"cht.set4"}]

function ut:lobby/menu/team_update