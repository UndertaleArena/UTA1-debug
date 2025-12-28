#By TSbread, Nebulirion and Flesy_Z

scoreboard players operation timer031 hud = @s sadness_timer
scoreboard players operation timer031_ms hud = timer031 hud
scoreboard players operation timer031 hud /= 20 const
scoreboard players operation timer031_ms hud %= 20 const
scoreboard players operation timer031_ms hud /= 2 const
execute if score @s sadness_level matches 1..5 run data modify storage soul ActionList prepend value '[{"text":"\\uF819\\uF817\\uF031\\uF812"},{"text":"","font":"minecraft:back.state.small","extra":[{"score":{"objective":"hud","name":"timer031"}},{"text":"."},{"score":{"objective":"hud","name":"timer031_ms"}},{"text":"s"}]},{"text":"","font":"minecraft:display","extra":[{"score":{"objective":"hud","name":"timer031"}},{"text":"."},{"score":{"objective":"hud","name":"timer031_ms"}},{"text":"s"}]},{"text":"\\uF801"},{"font":"minecraft:back.state.small","score":{"objective":"sadness_level","name":"@s"}},{"font":"display.even.lower","score":{"objective":"sadness_level","name":"@s"}},{"text":"\\uF821\\uF819\\uF815"}]'

execute unless score @s sadness_level matches 1..5 run data modify storage soul ActionList prepend value '[{"text":"\\uF819\\uF817\\uF032\\uF812"},{"text":"","font":"minecraft:back.state.small","extra":[{"score":{"objective":"hud","name":"timer031"}},{"text":"."},{"score":{"objective":"hud","name":"timer031_ms"}},{"text":"s"}]},{"text":"","font":"minecraft:display","extra":[{"score":{"objective":"hud","name":"timer031"}},{"text":"."},{"score":{"objective":"hud","name":"timer031_ms"}},{"text":"s"}]},{"text":"\\uF819\\uF815"}]'

data modify storage soul ActionList append value '{"text":"\\uF839\\uF838"}'