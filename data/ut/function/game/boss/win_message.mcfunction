#By Nebulirion

#Need:

tellraw @a [{"text":" "}]
tellraw @a [{"translate":"cht.line","color":"gold"}]
#
tellraw @a ["",{"translate":"pfx.game"},{"translate":"cht.gm1"}]
execute if entity @a[tag=winner] run tellraw @a ""
#
execute if score pc store matches 1 if entity @a[tag=winner] run tellraw @a ["",{"translate":"pfx.game"},{"translate":"cht.gm5","with":[{"selector":"@a[tag=winner_alive]","bold":false}]}]
execute if score pc store matches 2.. if entity @a[tag=winner] if entity @a[tag=winner_dead] run tellraw @a ["",{"translate":"pfx.game"},{"translate":"cht.gm4","with":[[{"selector":"@a[tag=winner_alive]","bold":false},", ",{"selector":"@a[tag=winner_dead]","color":"gray"}]]}]
execute if score pc store matches 2.. if entity @a[tag=winner] unless entity @a[tag=winner_dead] run tellraw @a ["",{"translate":"pfx.game"},{"translate":"cht.gm4","with":[{"selector":"@a[tag=winner_alive]","bold":false}]}]
#
tellraw @a [{"translate":"cht.line","color":"gold"}]
tellraw @a [{"text":" "}]