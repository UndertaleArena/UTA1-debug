#By Nebulirion

execute if entity @a[tag=killer_p] run tellraw @a[tag=!filtering] ["",{"translate":"pfx.ingame"},{"translate":"cht.mlt1","with":[{"selector":"@s"},{"selector":"@a[tag=killer_p]"}]}]
execute unless entity @a[tag=killer_p] run tellraw @a[tag=!filtering] ["",{"translate":"pfx.ingame"},{"translate":"cht.mlt0","with":[{"selector":"@s"}]}]