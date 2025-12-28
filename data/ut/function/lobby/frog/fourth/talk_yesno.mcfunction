#By Nebulirion while in class (im paying attention so don't judge me ok)

scoreboard players enable @s trigger
tellraw @s [{"text":"","extra":[" ",{"text":"","extra":[{"translate":"button.yes","hoverEvent":{"action":"show_text","value":{"translate":"frog.hover.1"}},"clickEvent":{"action":"run_command","value": "/trigger trigger set 194"},"color":"gray"}]},{"text":"     "},{"text":"","extra":[{"translate":"button.no","hoverEvent":{"action":"show_text","value":{"translate":"frog.hover.1"}},"clickEvent":{"action":"run_command","value": "/trigger trigger set 195"},"color":"gray"}]},{"text":" "}]}]