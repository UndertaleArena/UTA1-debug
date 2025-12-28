#By TSbread, Nebulirion and Flesy_Z

scoreboard players operation timer004 hud = @s dummy_timer
scoreboard players operation timer004 hud /= 20 const

execute if score @s dummy matches ..9 run data modify storage soul ActionList prepend value '["",{"text":"","font":"minecraft:actionbar_lobby","extra":[{"text":"\\uF819\\uF817\\uF004\\uF812"}]},{"text":"","font":"minecraft:back.state.small","extra":[{"score":{"objective":"hud","name":"timer004"}},{"text":"s"}]},{"text":"","font":"minecraft:display","extra":[{"score":{"objective":"hud","name":"timer004"}},{"text":"s"}]},{"text":""},{"font":"minecraft:back.state.small","score":{"objective":"dummy","name":"@s"}},{"font":"display.even.lower","score":{"objective":"dummy","name":"@s"}},{"text":"\\uF819\\uF815"}]'
execute if score @s dummy matches 10.. run data modify storage soul ActionList prepend value '["",{"text":"","font":"minecraft:actionbar_lobby","extra":[{"text":"\\uF819\\uF817\\uF005\\uF812"}]},{"text":"","font":"minecraft:back.state.small","extra":[{"score":{"objective":"hud","name":"timer004"}},{"text":"s"}]},{"text":"","font":"minecraft:display","extra":[{"score":{"objective":"hud","name":"timer004"}},{"text":"s"}]},{"text":""},{"font":"minecraft:back.state.small","score":{"objective":"dummy","name":"@s"}},{"font":"display.even.lower","score":{"objective":"dummy","name":"@s"}},{"text":"\\uF819\\uF815"}]'

data modify storage soul ActionList append value '{"text":"\\uF839\\uF838"}'