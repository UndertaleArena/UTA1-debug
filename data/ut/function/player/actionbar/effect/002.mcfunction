#By TSbread, Nebulirion and Flesy_Z

scoreboard players operation timer002 hud = @s king_timer
scoreboard players operation timer002_ms hud = timer002 hud
scoreboard players operation timer002 hud /= 20 const
scoreboard players operation timer002_ms hud %= 20 const
scoreboard players operation timer002_ms hud /= 2 const
data modify storage soul ActionList prepend value '[{"text":"\\uF819\\uF817\\uF002\\uF812"},{"text":"","font":"minecraft:back.state.small","extra":[{"score":{"objective":"hud","name":"timer002"}},{"text":"."},{"score":{"objective":"hud","name":"timer002_ms"}},{"text":"s"}]},{"text":"","font":"minecraft:display","extra":[{"score":{"objective":"hud","name":"timer002"}},{"text":"."},{"score":{"objective":"hud","name":"timer002_ms"}},{"text":"s"}]},{"text":"\\uF819\\uF815"}]'

data modify storage soul ActionList append value '{"text":"\\uF839\\uF838"}'