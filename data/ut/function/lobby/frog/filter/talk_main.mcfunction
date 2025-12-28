#By Nebulirion while in class (im paying attention so don't judge me ok)

scoreboard players enable @s trigger
scoreboard players set @s frog_talk 1

###GREETING
execute if score @s frog_talk matches 1 run tellraw @s ["",{"translate":"pfx.frog"},{"translate":"frog.filter.0"}]

tellraw @s [{"text":"","extra":[" ",{"text":"","extra":[{"translate":"stat.bracket0","with":[{"translate":"stattype.big.1"}],"hoverEvent":{"action":"show_text","value":{"translate":"frog.hover.1"}},"clickEvent":{"action":"run_command","value": "/trigger trigger set 169"},"color":"gray"}]},{"text":" "},{"text":"","extra":[{"translate":"stat.bracket0","with":[{"translate":"stattype.big.2"}],"hoverEvent":{"action":"show_text","value":{"translate":"frog.hover.1"}},"clickEvent":{"action":"run_command","value": "/trigger trigger set 191"},"color":"gray"}]},{"text":" "},{"text":"","extra":[{"translate":"stat.bracket0","with":[{"translate":"stattype.big.3"}],"hoverEvent":{"action":"show_text","value":{"translate":"frog.hover.1"}},"clickEvent":{"action":"run_command","value": "/trigger trigger set 192"},"color":"gray"}]},{"text":" "}]}]