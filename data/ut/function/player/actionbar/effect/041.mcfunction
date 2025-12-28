#By TSbread, Nebulirion and Flesy_Z

scoreboard players operation timer041 hud = -Timer gamescore
scoreboard players operation timer041_ms hud = timer041 hud
scoreboard players operation timer041 hud /= 20 const
scoreboard players operation timer041_ms hud %= 20 const
scoreboard players operation timer041_ms hud /= 2 const
execute unless score -Timer gamescore matches 0 if score timer041 hud matches 10.. run data modify storage soul ActionList prepend value '[{"text":"\\uF819\\uF817\\uF041\\uF812"},{"text":"","font":"minecraft:back.state.small","extra":[{"score":{"objective":"hud","name":"timer041"}},{"text":"s"}]},{"text":"","font":"minecraft:display","extra":[{"score":{"objective":"hud","name":"timer041"}},{"text":"s"}]},{"text":"\\uF819\\uF815"}]'
execute unless score -Timer gamescore matches 0 if score timer041 hud matches ..9 run data modify storage soul ActionList prepend value '[{"text":"\\uF819\\uF817\\uF041\\uF812"},{"text":"","font":"minecraft:back.state.small","extra":[{"score":{"objective":"hud","name":"timer041"}},{"text":"."},{"score":{"objective":"hud","name":"timer041_ms"}},{"text":"s"}]},{"text":"","font":"minecraft:display","extra":[{"score":{"objective":"hud","name":"timer041"}},{"text":"."},{"score":{"objective":"hud","name":"timer041_ms"}},{"text":"s"}]},{"text":"\\uF819\\uF815"}]'
execute if score -Timer gamescore matches 0 run data modify storage soul ActionList prepend value '[{"text":"\\uF819\\uF817\\uF051\\uF812"},{"text":"","font":"minecraft:back.state.small","color":"dark_red","extra":[{"text":"0.0s"}]},{"text":"","font":"minecraft:display","extra":[{"text":"0.0s"}]},{"text":"\\uF819\\uF815"}]'

data modify storage soul ActionList append value '{"text":"\\uF839\\uF838"}'