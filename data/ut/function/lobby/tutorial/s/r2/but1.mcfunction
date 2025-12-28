#hihi this is neb

scoreboard players set -dtuse store 0

scoreboard players set -replacedata store 0
function ut:stats/get_player_data
execute store result score -dtuse store run data get storage utstats:main LoadedPlayer.Player.Stats[7]

execute unless score -dtuse store matches 100.. run tellraw @s ["",{"translate":"pfx.tut"},{"translate":"stut.r2.e1.1","with":[{"score": {"name": "-dtuse", "objective": "store"}}]}]
execute if score -dtuse store matches 100.. run tellraw @s ["",{"translate":"pfx.tut"},{"translate":"stut.r2.e1.2","with":[{"score": {"name": "-dtuse", "objective": "store"}}]}]