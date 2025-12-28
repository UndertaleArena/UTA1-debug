#By TSbread, Nebulirion and Flesy_Z

scoreboard players operation timer043 hud = @s impaled_timer
scoreboard players operation timer043_ms hud = timer043 hud
scoreboard players operation timer043 hud /= 20 const
scoreboard players operation timer043_ms hud %= 20 const
scoreboard players operation timer043_ms hud /= 2 const

execute if score @s impaled_level matches 3.. run data modify storage soul ActionList prepend value '[{"text":"\\uF819\\uF817\\uF043\\uF812"},{"text":"","font":"minecraft:back.state.small","extra":[{"score":{"objective":"hud","name":"timer043"}},{"text":"."},{"score":{"objective":"hud","name":"timer043_ms"}},{"text":"s"}]},{"text":"","font":"minecraft:display","extra":[{"score":{"objective":"hud","name":"timer043"}},{"text":"."},{"score":{"objective":"hud","name":"timer043_ms"}},{"text":"s"}]},{"text":"\\uF801"},{"font":"minecraft:back.state.small","score":{"objective":"impaled_level","name":"@s"}},{"font":"display.even.lower","score":{"objective":"impaled_level","name":"@s"}},{"text":"\\uF821\\uF819\\uF815"}]'
execute unless score @s impaled_level matches 3.. run data modify storage soul ActionList prepend value '[{"text":"\\uF819\\uF817\\uF044\\uF812"},{"text":"","font":"minecraft:back.state.small","extra":[{"score":{"objective":"hud","name":"timer043"}},{"text":"."},{"score":{"objective":"hud","name":"timer043_ms"}},{"text":"s"}]},{"text":"","font":"minecraft:display","extra":[{"score":{"objective":"hud","name":"timer043"}},{"text":"."},{"score":{"objective":"hud","name":"timer043_ms"}},{"text":"s"}]},{"text":"\\uF801"},{"font":"minecraft:back.state.small","score":{"objective":"impaled_level","name":"@s"}},{"font":"display.even.lower","score":{"objective":"impaled_level","name":"@s"}},{"text":"\\uF821\\uF819\\uF815"}]'

data modify storage soul ActionList append value '{"text":"\\uF839\\uF838"}'