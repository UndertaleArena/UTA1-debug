#By TSbread, Nebulirion and Flesy_Z

scoreboard players operation timer007 hud = @s kindness_timer
scoreboard players operation timer007_ms hud = timer007 hud
scoreboard players operation timer007 hud /= 20 const
scoreboard players operation timer007_ms hud %= 20 const
scoreboard players operation timer007_ms hud /= 2 const
data modify storage soul ActionList prepend value '[{"text":"\\uF819\\uF817\\uF007\\uF812"},{"text":"","font":"minecraft:back.state.small","extra":[{"score":{"objective":"hud","name":"timer007"}},{"text":"."},{"score":{"objective":"hud","name":"timer007_ms"}},{"text":"s"}]},{"text":"","font":"minecraft:display","extra":[{"score":{"objective":"hud","name":"timer007"}},{"text":"."},{"score":{"objective":"hud","name":"timer007_ms"}},{"text":"s"}]},{"text":"\\uF819\\uF815"}]'

data modify storage soul ActionList append value '{"text":"\\uF839\\uF838"}'