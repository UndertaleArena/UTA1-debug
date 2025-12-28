#By Nebulirion

#score adding
scoreboard players add @s dummy 1

#display text
execute if score @s dummy matches 1 run tellraw @a[tag=ray_user] ["",{"translate":"pfx.info"},{"translate":"cht.dummy1"}]
execute if score @s dummy matches 2..4 run tellraw @a[tag=ray_user] ["",{"translate":"pfx.info"},{"translate":"cht.dummy2"}]
execute if score @s dummy matches 5 run tellraw @a[tag=ray_user] ["",{"translate":"pfx.info"},{"translate":"cht.dummy3"}]

#spareable
execute if score @s dummy matches 5 run function ut:lobby/minis/dummy/move/dummy/spareable