$bossbar set p$(Current)_hp players
$bossbar set p$(Current)_dt players
$bossbar set p$(Current)_dt_passive players

scoreboard players remove #play_bossbar store 1
execute store result storage ut:macro Bossbar.Current int 1 run scoreboard players get #play_bossbar store
execute if score #play_bossbar store matches 0.. run function ut:player/bossbar/macro/loop/reset with storage ut:macro Bossbar