#By Neb or someone else bc i have no idea

kill @e[tag=door_unlock]

#CHECK DOORS
execute as @e[tag=door_3g] at @s run function ut:lobby/door/door_3g
execute as @e[tag=door_6g] at @s run function ut:lobby/door/door_6g
execute as @e[tag=door_9g] at @s run function ut:lobby/door/door_9g

#CHECK UNLOCKS
execute if score -total gamesfinished matches 3.. unless score unlock gamesfinished matches 1.. run tellraw @a ["",{"translate":"pfx.info"},{"translate":"unlock.mng","with":[{"translate":"mng.dummy"}]}]
execute if score -total gamesfinished matches 3.. unless score unlock gamesfinished matches 1.. run tellraw @a ["",{"translate":"pfx.info"},{"translate":"unlock.mng","with":[{"translate":"mng.frog"}]}]
execute if score -total gamesfinished matches 3.. unless score unlock gamesfinished matches 1.. run scoreboard players set unlock gamesfinished 1
execute if score -total gamesfinished matches 6.. unless score unlock gamesfinished matches 2.. run tellraw @a ["",{"translate":"pfx.info"},{"translate":"unlock.mng","with":[{"translate":"mng.parkour"}]}]
execute if score -total gamesfinished matches 6.. unless score unlock gamesfinished matches 2.. run tellraw @a ["",{"translate":"pfx.info"},{"translate":"unlock.mng","with":[{"translate":"mng.maze"}]}]
execute if score -total gamesfinished matches 6.. unless score unlock gamesfinished matches 2.. run scoreboard players set unlock gamesfinished 2
execute if score -total gamesfinished matches 9.. unless score unlock gamesfinished matches 3.. run tellraw @a ["",{"translate":"pfx.info"},{"translate":"unlock.cre"}]
execute if score -total gamesfinished matches 9.. unless score unlock gamesfinished matches 3.. run scoreboard players set unlock gamesfinished 3