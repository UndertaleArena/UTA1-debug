#By TSbread, Nebulirion and Flesy_Z and ANTHINY609

scoreboard players operation mpregen hud = @s mpregen
scoreboard players operation mpregen hud /= 100 const
scoreboard players operation mpregen_1 hud = @s mpregen
scoreboard players operation mpregen_1 hud %= 100 const
scoreboard players operation mpregen_1 hud /= 10 const

data modify storage soul ActionList prepend value [{"text":"\uF819\uF817\uF052\uF812"},{"text":"","font":"minecraft:back.state.small","extra":[{"score":{"objective":"hud","name":"mpregen"}},{"text":"ss."}]},{"text":"","font":"minecraft:display","extra":[{"text":"x"},{"score":{"objective":"hud","name":"mpregen"}},{"text":"."}]},{"text":"","font":"minecraft:display","extra":[{"score":{"objective":"hud","name":"mpregen_1"}}]},{"text":"\uF819\uF815"}]

data modify storage soul ActionList append value {"text":"\uF839\uF838"}