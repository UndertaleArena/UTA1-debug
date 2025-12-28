#By TSbread, Nebulirion and Flesy_Z

scoreboard players operation timer024 hud = @s shocked_timer
scoreboard players operation timer024_ms hud = timer024 hud
scoreboard players operation timer024 hud /= 20 const
scoreboard players operation timer024_ms hud %= 20 const
scoreboard players operation timer024_ms hud /= 2 const
data modify storage soul ActionList prepend value '[{"text":"\\uF819\\uF817\\uF024\\uF812"},{"text":"","font":"minecraft:back.state.small","extra":[{"score":{"objective":"hud","name":"timer024"}},{"text":"."},{"score":{"objective":"hud","name":"timer024_ms"}},{"text":"s"}]},{"text":"","font":"minecraft:display","extra":[{"score":{"objective":"hud","name":"timer024"}},{"text":"."},{"score":{"objective":"hud","name":"timer024_ms"}},{"text":"s"}]},{"text":"\\uF819\\uF815"}]'

data modify storage soul ActionList append value '{"text":"\\uF839\\uF838"}'