#BY NEBULIRION
#
scoreboard players set #gain hp 200
scoreboard players operation @s hpmax += #gain hp
scoreboard players operation @s[tag=!hp_lock] hp += #gain hp
#
scoreboard players add @s atk 10
scoreboard players add @s lv 1
xp add @s 1 levels
xp set @s 0 points
#
function ut:player/bossbar/refresh
