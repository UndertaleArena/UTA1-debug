#By Nebulirion

###CHANGE VALUE
scoreboard players add setSoul gamerule 1
execute if score setSoul gamerule matches 2.. run scoreboard players set setSoul gamerule 0

execute if score setSoul gamerule matches 0 run tellraw @s ["",{"translate":"pfx.settings"},{"translate":"set.e.soul","underlined":true,"hoverEvent": {"action": "show_text", "value": {"translate":"set.e.soul.d"}}},{"translate":"set.e","with":[{"translate":"set.off"}]}]
execute if score setSoul gamerule matches 1 run tellraw @s ["",{"translate":"pfx.settings"},{"translate":"set.e.soul","underlined":true,"hoverEvent": {"action": "show_text", "value": {"translate":"set.e.soul.d"}}},{"translate":"set.e","with":[{"translate":"set.on"}]}]
execute if score setSoul gamerule matches 1 run tellraw @s [{"translate":"set.experiment","color":"gray"}]
