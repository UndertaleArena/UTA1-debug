#By TSbread, Nebulirion and Flesy_Z


#scoreboard players operation shield hud = @s shield
#scoreboard players operation shield hud /= 100 const
#scoreboard players operation shield_1 hud = @s shield
#scoreboard players operation shield_1 hud %= 100 const
#scoreboard players operation shield_1 hud /= 10 const

#data modify storage soul ActionList prepend value {"text":"\uF819\uF817\uF013\uF819\uF817"}
#data modify storage soul ActionList append value {"text":"\uF839\uF838"}
#
#
#scoreboard players operation timer028 hud = @s passive_timer
scoreboard players operation timer028 hud = @s plt4

execute if score timer028 hud matches 1.. run data modify storage soul ActionList prepend value [{"text":"\uF819\uF817\uF013\uF812"},{"text":"","font":"minecraft:back.state.small","extra":[{"score":{"objective":"hud","name":"timer028"}},{"text":"s"}]},{"text":"","font":"minecraft:display","extra":[{"score":{"objective":"hud","name":"timer028"}},{"text":"s"}]},{"text":"\uF819\uF815"}]
execute unless score timer028 hud matches 1.. run data modify storage soul ActionList prepend value {"text":"\uF819\uF817\uF013\uF819\uF817"}
#data modify storage soul ActionList prepend value {"text":"\uF819\uF817\uF013\uF819\uF817"}
data modify storage soul ActionList append value {"text":"\uF839\uF838"}