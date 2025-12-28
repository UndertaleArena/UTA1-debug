#BY NEBULIRION

execute store result score temp store run experience query @s levels
scoreboard players operation temp store -= @s lv

execute if score temp store matches 128.. run experience add @s -128 levels
execute if score temp store matches 128.. run scoreboard players remove temp store 128
execute if score temp store matches 64.. run experience add @s -64 levels
execute if score temp store matches 64.. run scoreboard players remove temp store 64
execute if score temp store matches 32.. run experience add @s -32 levels
execute if score temp store matches 32.. run scoreboard players remove temp store 32
execute if score temp store matches 16.. run experience add @s -16 levels
execute if score temp store matches 16.. run scoreboard players remove temp store 16
execute if score temp store matches 8.. run experience add @s -8 levels
execute if score temp store matches 8.. run scoreboard players remove temp store 8
execute if score temp store matches 4.. run experience add @s -4 levels
execute if score temp store matches 4.. run scoreboard players remove temp store 4
execute if score temp store matches 2.. run experience add @s -2 levels
execute if score temp store matches 2.. run scoreboard players remove temp store 2
execute if score temp store matches 1.. run experience add @s -1 levels
execute if score temp store matches 1.. run scoreboard players remove temp store 1

execute if score temp store matches ..-128 run experience add @s 128 levels
execute if score temp store matches ..-128 run scoreboard players remove temp store 128
execute if score temp store matches ..-64 run experience add @s 64 levels
execute if score temp store matches ..-64 run scoreboard players add temp store 64
execute if score temp store matches ..-32 run experience add @s 32 levels
execute if score temp store matches ..-32 run scoreboard players add temp store 32
execute if score temp store matches ..-16 run experience add @s 16 levels
execute if score temp store matches ..-16 run scoreboard players add temp store 16
execute if score temp store matches ..-8 run experience add @s 8 levels
execute if score temp store matches ..-8 run scoreboard players add temp store 8
execute if score temp store matches ..-4 run experience add @s 4 levels
execute if score temp store matches ..-4 run scoreboard players add temp store 4
execute if score temp store matches ..-2 run experience add @s 2 levels
execute if score temp store matches ..-2 run scoreboard players add temp store 2
execute if score temp store matches ..-1 run experience add @s 1 levels
execute if score temp store matches ..-1 run scoreboard players add temp store 1

execute unless score temp store matches 0 run function ut:player/love/sync