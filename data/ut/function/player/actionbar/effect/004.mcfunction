#By TSbread, Nebulirion and Flesy_Z

scoreboard players operation timer004 hud = @s genocide_timer
scoreboard players operation timer004_ms hud = timer004 hud
scoreboard players operation timer004 hud /= 20 const
scoreboard players operation timer004_ms hud %= 20 const
scoreboard players operation timer004_ms hud /= 2 const
data modify storage soul ActionList prepend value '[{"text":"\\uF819\\uF817\\uF004\\uF812"},{"text":"","font":"minecraft:back.state.small","extra":[{"score":{"objective":"hud","name":"timer004"}},{"text":"."},{"score":{"objective":"hud","name":"timer004_ms"}},{"text":"s"}]},{"text":"","font":"minecraft:display","extra":[{"score":{"objective":"hud","name":"timer004"}},{"text":"."},{"score":{"objective":"hud","name":"timer004_ms"}},{"text":"s"}]},{"text":""},{"font":"minecraft:back.state.small","score":{"objective":"genocide_level","name":"@s"}},{"font":"display.even.lower","score":{"objective":"genocide_level","name":"@s"}},{"text":"\\uF819\\uF815"}]'

data modify storage soul ActionList append value '{"text":"\\uF839\\uF838"}'