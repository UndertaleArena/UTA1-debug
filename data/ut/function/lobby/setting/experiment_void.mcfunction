#By Nebulirion

###CHANGE VALUE
scoreboard players add voidProtection gamerule 1
execute if score voidProtection gamerule matches 2.. run scoreboard players set voidProtection gamerule 0

execute if score voidProtection gamerule matches 0 run tellraw @s ["",{"translate":"pfx.settings"},{"translate":"set.e.void","underlined":true,"hoverEvent": {"action": "show_text", "value": {"translate":"set.e.void.d"}}},{"translate":"set.e","with":[{"translate":"set.off"}]}]
execute if score voidProtection gamerule matches 1 run tellraw @s ["",{"translate":"pfx.settings"},{"translate":"set.e.void","underlined":true,"hoverEvent": {"action": "show_text", "value": {"translate":"set.e.void.d"}}},{"translate":"set.e","with":[{"translate":"set.on"}]}]
execute if score voidProtection gamerule matches 1 run tellraw @s [{"translate":"set.experiment","color":"gray"}]
