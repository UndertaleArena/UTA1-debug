#By Nebulirion

execute if score @s dt > @s dtmax run scoreboard players operation @s dt = @s dtmax
execute if entity @s[tag=!dt_ready] if score @s dt = @s dtmax run function ut:player/dt/fill
execute if entity @s[tag=dt_ready] if score @s dt < @s dtmax run function ut:player/dt/unfill
#
execute store result storage ut:macro Bossbar.Current int 1 run scoreboard players get @s bid
data modify storage ut:macro Bossbar.BossbarName set value "dt"
data modify storage ut:macro Bossbar.BossbarType set value "value"
data modify storage ut:macro Bossbar.Scoreboard set value "dt"
function ut:player/bossbar/macro/update with storage ut:macro Bossbar