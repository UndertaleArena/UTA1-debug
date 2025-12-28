#By Nebulirion

scoreboard players operation #atker tid = @s tid
scoreboard players operation #atker will = @s will

execute if score @s will <= 0 const if entity @s[tag=!undying,tag=!no_particles] as @a[tag=playing,tag=!passive_frisk] if data entity @s Inventory[{components:{"minecraft:custom_data":{spare:1b}}}] unless score @s tid = #atker tid if score #atker will < @s will run particle minecraft:dust{color:[1.0,1.0,0.0],scale:0.7} ~ ~1 ~ 0.25 0.45 0.25 1 2 force @s[tag=!pinky]

execute if score @s will <= @s will25 if entity @s[tag=!undying,tag=!no_particles] as @a[tag=playing,tag=passive_frisk] if data entity @s Inventory[{components:{"minecraft:custom_data":{spare:1b}}}] unless score @s tid = #atker tid if score #atker will < @s will run particle minecraft:dust{color:[1.0,1.0,0.0],scale:0.7} ~ ~1 ~ 0.25 0.45 0.25 1 2 force @s[tag=!pinky]

execute if score @s will <= 0 const if entity @s[tag=!undying,tag=!no_particles] as @a[tag=playing,tag=!passive_frisk] if data entity @s Inventory[{components:{"minecraft:custom_data":{spare:1b}}}] unless score @s tid = #atker tid if score #atker will < @s will run particle minecraft:dust{color:[1.0,0.5,0.8],scale:0.7} ~ ~1 ~ 0.25 0.45 0.25 1 2 force @s[tag=pinky]

execute if score @s will <= @s will25 if entity @s[tag=!undying,tag=!no_particles] as @a[tag=playing,tag=passive_frisk] if data entity @s Inventory[{components:{"minecraft:custom_data":{spare:1b}}}] unless score @s tid = #atker tid if score #atker will < @s will run particle minecraft:dust{color:[1.0,0.5,0.8],scale:0.7} ~ ~1 ~ 0.25 0.45 0.25 1 2 force @s[tag=pinky]
