#By Nebulirion

scoreboard players add @s life 2
execute if score @s life matches 60.. run scoreboard players set @s life -60

execute if score @s life matches 0..19 run tp @s ~ ~0.015 ~
execute if score @s life matches 20..39 run tp @s ~ ~-0.015 ~
execute if score @s life matches 40..59 run tp @s ~ ~-0.025 ~
execute if score @s life matches -60..-41 run tp @s ~ ~-0.015 ~
execute if score @s life matches -40..-21 run tp @s ~ ~0.015 ~
execute if score @s life matches -20..-1 run tp @s ~ ~0.025 ~

tag @s add tr_soul
execute if entity @s[tag=active] positioned ~ ~-1.3 ~ align xyz positioned ~-1 ~ ~-1 as @a[dx=2,dy=3,dz=2,distance=0.1..,tag=!spectator] unless score @s tid = @e[tag=tr_soul,limit=1] ptid run function ut:lobby/soul/join
tag @s remove tr_soul