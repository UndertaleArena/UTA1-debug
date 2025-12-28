#By Nebulirion

#
execute store result storage ut:macro Bossbar.Current int 1 run scoreboard players get @s bid
data modify storage ut:macro Bossbar.BossbarName set value "dt"
data modify storage ut:macro Bossbar.BossbarType set value "max"
data modify storage ut:macro Bossbar.Scoreboard set value "dtmax"
function ut:player/bossbar/macro/update with storage ut:macro Bossbar