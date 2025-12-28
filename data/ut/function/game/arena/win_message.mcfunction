#By Nebulirion

#Need:

tellraw @a [{"text":" "}]
tellraw @a [{"translate":"cht.line","color":"gold"}]
#
tellraw @a ["",{"translate":"pfx.game"},{"translate":"cht.gm1"}]
execute if entity @a[tag=winner] run tellraw @a ""
#
execute if score pc store matches 2.. if entity @a[tag=winner,scores={tid=1}] run tellraw @a ["",{"translate":"pfx.game"},{"translate":"cht.gm2","with":[{"translate":"tem.1","color":"red"}]}]
execute if score pc store matches 2.. if entity @a[tag=winner,scores={tid=2}] run tellraw @a ["",{"translate":"pfx.game"},{"translate":"cht.gm2","with":[{"translate":"tem.2","color":"aqua"}]}]
execute if score pc store matches 2.. if entity @a[tag=winner,scores={tid=3}] run tellraw @a ["",{"translate":"pfx.game"},{"translate":"cht.gm2","with":[{"translate":"tem.3","color":"gold"}]}]
execute if score pc store matches 2.. if entity @a[tag=winner,scores={tid=4}] run tellraw @a ["",{"translate":"pfx.game"},{"translate":"cht.gm2","with":[{"translate":"tem.4","color":"blue"}]}]
execute if score pc store matches 2.. if entity @a[tag=winner,scores={tid=5}] run tellraw @a ["",{"translate":"pfx.game"},{"translate":"cht.gm2","with":[{"translate":"tem.5","color":"yellow"}]}]
execute if score pc store matches 2.. if entity @a[tag=winner,scores={tid=6}] run tellraw @a ["",{"translate":"pfx.game"},{"translate":"cht.gm2","with":[{"translate":"tem.6","color":"light_purple"}]}]
execute if score pc store matches 2.. if entity @a[tag=winner,scores={tid=7}] run tellraw @a ["",{"translate":"pfx.game"},{"translate":"cht.gm2","with":[{"translate":"tem.7","color":"green"}]}]
execute if score pc store matches 2.. if entity @a[tag=winner,scores={tid=8}] run tellraw @a ["",{"translate":"pfx.game"},{"translate":"cht.gm2","with":[{"translate":"tem.8","color":"white"}]}]
#
execute if score pc store matches 1 if entity @a[tag=winner] run tellraw @a ["",{"translate":"pfx.game"},{"translate":"cht.gm5","with":[{"selector":"@a[tag=winner_alive]","bold":false}]}]
execute if score pc store matches 2.. if entity @a[tag=winner] if entity @a[tag=winner_dead] run tellraw @a ["",{"translate":"pfx.game"},{"translate":"cht.gm4","with":[[{"selector":"@a[tag=winner_alive]","bold":false},", ",{"selector":"@a[tag=winner_dead]","color":"gray"}]]}]
execute if score pc store matches 2.. if entity @a[tag=winner] unless entity @a[tag=winner_dead] run tellraw @a ["",{"translate":"pfx.game"},{"translate":"cht.gm4","with":[{"selector":"@a[tag=winner_alive]","bold":false}]}]
#
tellraw @a [{"translate":"cht.line","color":"gold"}]
tellraw @a [{"text":" "}]