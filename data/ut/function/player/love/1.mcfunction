#BY NEBULIRION
#
scoreboard players operation @s hpmax = @s hpbase
scoreboard players operation @s hp = @s hpmax
scoreboard players set @s atk 100
scoreboard players set @s lv 1
xp set @s 1 levels
xp set @s 0 points
#
function ut:player/bossbar/refresh
