#By Nebulirion

#
scoreboard players operation #overhealth hp = @s hp
scoreboard players operation #overhealth hp += @s shield

execute store result storage ut:macro Bossbar.Current int 1 run scoreboard players get @s bid
data modify storage ut:macro Bossbar.BossbarName set value "hp"
data modify storage ut:macro Bossbar.BossbarType set value "value"
data modify storage ut:macro Bossbar.Who set value "@s"
execute unless score #overhealth hp = @s hp run data modify storage ut:macro Bossbar.Who set value "#overhealth"
data modify storage ut:macro Bossbar.Scoreboard set value "hp"
function ut:player/bossbar/macro/update with storage ut:macro Bossbar

execute store result storage ut:macro Bossbar.HP int 0.01 run scoreboard players get @s hp
execute unless score #overhealth hp = @s hp store result storage ut:macro Bossbar.HP int 0.01 run scoreboard players get #overhealth hp
execute store result storage ut:macro Bossbar.HPMAX int 0.01 run scoreboard players get @s hpmax
function ut:player/bossbar/macro/name with storage ut:macro Bossbar

function ut:player/hp/update_maxstyle

scoreboard players operation #temp hpdis = @s hp
scoreboard players add #temp hpdis 99
scoreboard players operation #temp hpdis /= #rate hpdis
scoreboard players operation @s hpdis = #temp hpdis

execute if score hpDisplay gamerule matches 2 run function ut:player/hp/bar/main