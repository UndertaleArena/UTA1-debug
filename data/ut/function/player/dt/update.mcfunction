#By Nebulirion & Ds_Squid

execute if score @s dt > @s dtmax run scoreboard players operation @s dt = @s dtmax
execute if entity @s[tag=!dt_ready,tag=!passive_papyrus] if score @s dt = @s dtmax run function ut:player/dt/fill
execute if entity @s[tag=!dt_ready,tag=passive_papyrus] if score @s dt >= @s dthalf run function ut:player/dt/fill
execute if entity @s[tag=dt_ready,tag=!passive_papyrus] if score @s dt < @s dtmax run function ut:player/dt/unfill
execute if entity @s[tag=dt_ready,tag=passive_papyrus] if score @s dt < @s dthalf run function ut:player/dt/unfill
execute if entity @s[tag=!dt_oready,tag=passive_papyrus] if score @s dt = @s dtmax run function ut:player/dt/overfill
execute if entity @s[tag=dt_oready,tag=passive_papyrus] if score @s dt < @s dtmax run function ut:player/dt/unoverfill
#
execute store result storage ut:macro Bossbar.Current int 1 run scoreboard players get @s bid
data modify storage ut:macro Bossbar.BossbarName set value "dt"
data modify storage ut:macro Bossbar.BossbarType set value "value"
data modify storage ut:macro Bossbar.Who set value "@s"
data modify storage ut:macro Bossbar.Scoreboard set value "dt"
function ut:player/bossbar/macro/update with storage ut:macro Bossbar
execute if entity @s[tag=passive_papyrus,tag=playing] run function ut:player/dt/pap_pass with storage ut:macro Bossbar
