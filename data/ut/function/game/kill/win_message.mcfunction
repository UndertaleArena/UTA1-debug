#By Nebulirion

#Need:

tellraw @a [{"text":" "}]
tellraw @a [{"translate":"cht.line","color":"gold"}]
#
tellraw @a ["",{"translate":"pfx.game"},{"translate":"cht.gm1"}]
execute if entity @a[tag=winner] run tellraw @a ""
#
execute if score pc store matches 1 if entity @a[tag=winner] run tellraw @a ["",{"translate":"pfx.game"},{"translate":"cht.gm5","with":[{"selector":"@a[tag=winner]","bold":false}]}]
execute if score pc store matches 2.. if entity @a[tag=winner] run tellraw @a ["",{"translate":"pfx.game"},{"translate":"cht.gm4","with":[{"selector":"@a[tag=winner]","bold":false}]}]
#
tellraw @a [{"translate":"cht.line","color":"gold"}]
tellraw @a [{"text":" "}]