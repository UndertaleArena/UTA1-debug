#By TSbread, Nebulirion and Flesy_Z

scoreboard players operation timer003 hud = @s plt2
scoreboard players operation timer003_ms hud = timer003 hud
scoreboard players operation timer003 hud /= 20 const
scoreboard players operation timer003_ms hud %= 20 const
scoreboard players operation timer003_ms hud /= 2 const
data modify storage soul ActionList prepend value '[{"text":"\\uF819\\uF817\\uF003\\uF812"},{"text":"","font":"minecraft:back.state.small","extra":[{"score":{"objective":"hud","name":"timer003"}},{"text":"."},{"score":{"objective":"hud","name":"timer003_ms"}},{"text":"s"}]},{"text":"","font":"minecraft:display","extra":[{"score":{"objective":"hud","name":"timer003"}},{"text":"."},{"score":{"objective":"hud","name":"timer003_ms"}},{"text":"s"}]},{"text":"\\uF819\\uF815"}]'

data modify storage soul ActionList append value '{"text":"\\uF839\\uF838"}'