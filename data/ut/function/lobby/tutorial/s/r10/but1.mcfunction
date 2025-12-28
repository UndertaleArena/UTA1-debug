#hihi this is neb

scoreboard players add @s st_dtuse 0
execute unless score @s st_dtuse matches 100.. run tellraw @s ["",{"translate":"pfx.tut"},{"translate":"stut.r1.e1.1","with":[{"score": {"name": "@s", "objective": "st_dtuse"}}]}]
execute if score @s st_dtuse matches 100.. run tellraw @s ["",{"translate":"pfx.tut"},{"translate":"stut.r1.e1.2","with":[{"score": {"name": "@s", "objective": "st_dtuse"}}]}]