#

execute store result score #plx border run data get entity @s Pos[0] 10
execute store result score #plz border run data get entity @s Pos[2] 10
scoreboard players operation #plx border -= -center_x border
scoreboard players operation #plz border -= -center_z border
scoreboard players operation #plx border *= #plx border
scoreboard players operation #plz border *= #plz border

scoreboard players operation @s border = #plx border
scoreboard players operation @s border += #plz border
scoreboard players operation -output border = @s border

scoreboard players operation #border border = -size border
scoreboard players operation #border border /= 1 const
scoreboard players add #border border 1
scoreboard players operation #border border *= #border border

scoreboard players operation @s border -= #border border
execute if score -size border matches ..0 run scoreboard players set @s border 100