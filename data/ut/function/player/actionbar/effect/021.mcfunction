#By TSbread, Nebulirion and Flesy_Z

scoreboard players operation timer021 hud = @s flirt_timer
scoreboard players operation timer021_ms hud = timer021 hud
scoreboard players operation timer021 hud /= 20 const
scoreboard players operation timer021_ms hud %= 20 const
scoreboard players operation timer021_ms hud /= 2 const
data modify storage soul ActionList prepend value '[{"text":"\\uF819\\uF817\\uF021\\uF812"},{"text":"","font":"minecraft:back.state.small","extra":[{"score":{"objective":"hud","name":"timer021"}},{"text":"."},{"score":{"objective":"hud","name":"timer021_ms"}},{"text":"s"}]},{"text":"","font":"minecraft:display","extra":[{"score":{"objective":"hud","name":"timer021"}},{"text":"."},{"score":{"objective":"hud","name":"timer021_ms"}},{"text":"s"}]},{"text":"\\uF819\\uF815"}]'

data modify storage soul ActionList append value '{"text":"\\uF839\\uF838"}'