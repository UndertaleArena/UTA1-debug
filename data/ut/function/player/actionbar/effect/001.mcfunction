#By TSbread, Nebulirion and Flesy_Z

scoreboard players operation timer001 hud = @s plt2
scoreboard players operation timer001_ms hud = timer001 hud
scoreboard players operation timer001 hud /= 20 const
scoreboard players operation timer001_ms hud %= 20 const
scoreboard players operation timer001_ms hud /= 2 const
data modify storage soul ActionList prepend value '[{"text":"\\uF819\\uF817\\uF001\\uF812"},{"text":"","font":"minecraft:back.state.small","extra":[{"score":{"objective":"hud","name":"timer001"}},{"text":"."},{"score":{"objective":"hud","name":"timer001_ms"}},{"text":"s"}]},{"text":"","font":"minecraft:display","extra":[{"score":{"objective":"hud","name":"timer001"}},{"text":"."},{"score":{"objective":"hud","name":"timer001_ms"}},{"text":"s"}]},{"text":"\\uF819\\uF815"}]'

data modify storage soul ActionList append value '{"text":"\\uF839\\uF838"}'