#By Nebulirion

execute if score PlayerLimit info matches ..1 run scoreboard players set PlayerLimit info 2
#execute if score PlayerLimit info matches 17.. run scoreboard players set PlayerLimit info 16
scoreboard players operation players info = PlayerLimit info

tellraw @s ["",{"translate":"pfx.settings"},{"translate":"cht.set1","with":[{"score":{"name":"PlayerLimit","objective":"info"}}]}]

execute if score PlayerLimit info matches ..1 run tellraw @s ["",{"translate":"pfx.warning"},{"translate":"cht.set3"}]
##execute if score PlayerLimit info matches 9.. run tellraw @s ["",{"translate":"pfx.warning"},{"translate":"cht.set5"}]

function ut:lobby/menu/team_update