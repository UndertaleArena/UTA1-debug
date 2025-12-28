#By ANTHINY609

$bossbar add p$(Current)_hp
$bossbar add p$(Current)_dt
$bossbar add p$(Current)_dt_passive

scoreboard players remove #play_bossbar store 1
execute store result storage ut:macro Bossbar.Current int 1 run scoreboard players get #play_bossbar store
execute if score #play_bossbar store matches 1.. run function ut:player/bossbar/macro/loop/add with storage ut:macro Bossbar