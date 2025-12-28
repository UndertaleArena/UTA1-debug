#By ANTHINY609

scoreboard players operation #muffet_spider pid = @s pid

execute as @e[tag=passive_muffet_shield,type=item_display] if score @s pid = #muffet_spider pid run tp ~ ~1 ~
execute as @e[tag=passive_muffet_shield,type=item_display] if score @s pid = #muffet_spider pid at @s run tp @s ~ ~ ~ ~-5 ~