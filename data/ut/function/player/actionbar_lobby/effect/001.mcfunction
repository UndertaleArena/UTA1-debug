#By TSbread, Nebulirion and Flesy_Z

scoreboard players operation timer004 hud = @s maze_timer
scoreboard players operation timer004 hud /= 20 const
data modify storage soul ActionList prepend value '["",{"text":"","font":"minecraft:actionbar_lobby","extra":[{"text":"\\uF819\\uF817\\uF003\\uF812"}]},{"text":"","font":"minecraft:back.state.small","extra":[{"score":{"objective":"hud","name":"timer004"}},{"text":"s"}]},{"text":"","font":"minecraft:display","extra":[{"score":{"objective":"hud","name":"timer004"}},{"text":"s"}]},{"text":""},{"font":"minecraft:back.state.small","score":{"objective":"genocide_level","name":"@s"}},{"font":"display.even.lower","score":{"objective":"genocide_level","name":"@s"}},{"text":"\\uF819\\uF815"}]'

data modify storage soul ActionList append value '{"text":"\\uF839\\uF838"}'