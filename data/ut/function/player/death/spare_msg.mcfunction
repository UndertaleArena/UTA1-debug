#By Nebulirion

execute if entity @a[tag=spare_p] run tellraw @a[tag=!filtering] ["",{"translate":"pfx.ingame"},{"translate":"cht.spr0","with":[{"selector":"@s"},{"selector":"@a[tag=spare_p]"}]}]

execute unless entity @a[tag=spare_p] run tellraw @a[tag=!filtering] ["",{"translate":"pfx.ingame"},{"translate":"cht.spr1","with":[{"selector":"@s"}]}]