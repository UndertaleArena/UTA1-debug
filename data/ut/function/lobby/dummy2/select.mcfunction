#By Nebulirion

scoreboard players add @a[tag=ray_user] dummy 1
execute as @a[tag=ray_user] if score @s dummy matches 1 run tellraw @s ["",{"translate":"pfx.info"},{"translate":"cht.dummy1"}]
execute as @a[tag=ray_user] if score @s dummy matches 2..4 run tellraw @s ["",{"translate":"pfx.info"},{"translate":"cht.dummy2"}]
execute as @a[tag=ray_user] if score @s dummy matches 5.. run tellraw @s ["",{"translate":"pfx.info"},{"translate":"cht.dummy3"}]
execute as @a[tag=ray_user] if score @s dummy matches 5.. run scoreboard players reset @a[tag=ray_user] dummy