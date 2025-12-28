#By TSbread, Nebulirion and Flesy_Z

scoreboard players operation timer023 hud = @s nomercy_timer
scoreboard players operation timer023_ms hud = timer023 hud
scoreboard players operation timer023 hud /= 20 const
scoreboard players operation timer023_ms hud %= 20 const
scoreboard players operation timer023_ms hud /= 2 const
execute if score timer023 hud matches 10.. run data modify storage soul ActionList prepend value '[{"text":"\\uF819\\uF817\\uF023\\uF812"},{"text":"","font":"minecraft:back.state.small","extra":[{"score":{"objective":"hud","name":"timer023"}},{"text":"s"}]},{"text":"","font":"minecraft:display","extra":[{"score":{"objective":"hud","name":"timer023"}},{"text":"s"}]},{"text":"\\uF819\\uF815"}]'
execute unless score timer023 hud matches 10.. run data modify storage soul ActionList prepend value '[{"text":"\\uF819\\uF817\\uF023\\uF812"},{"text":"","font":"minecraft:back.state.small","extra":[{"score":{"objective":"hud","name":"timer023"}},{"text":"."},{"score":{"objective":"hud","name":"timer023_ms"}},{"text":"s"}]},{"text":"","font":"minecraft:display","extra":[{"score":{"objective":"hud","name":"timer023"}},{"text":"."},{"score":{"objective":"hud","name":"timer023_ms"}},{"text":"s"}]},{"text":"\\uF819\\uF815"}]'

data modify storage soul ActionList append value '{"text":"\\uF839\\uF838"}'